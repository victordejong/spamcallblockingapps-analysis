package com.yanzhenjie.nohttp.download;

import android.text.TextUtils;
import com.yanzhenjie.nohttp.Connection;
import com.yanzhenjie.nohttp.Headers;
import com.yanzhenjie.nohttp.HttpConnection;
import com.yanzhenjie.nohttp.NetworkExecutor;
import com.yanzhenjie.nohttp.error.NetworkError;
import com.yanzhenjie.nohttp.error.StorageReadWriteError;
import com.yanzhenjie.nohttp.tools.HeaderUtils;
import com.yanzhenjie.nohttp.tools.IOUtils;
import com.yanzhenjie.nohttp.tools.NetUtils;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLDecoder;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/download/Downloader.class */
public class Downloader {
    private HttpConnection mHttpConnection;

    public Downloader(NetworkExecutor networkExecutor) {
        this.mHttpConnection = new HttpConnection(networkExecutor);
    }

    private Connection getConnectionRetry(DownloadRequest downloadRequest) {
        Connection connection = this.mHttpConnection.getConnection(downloadRequest);
        Exception exception = connection.exception();
        if (exception == null) {
            if (connection.responseHeaders().getResponseCode() != 416) {
                return connection;
            }
            downloadRequest.removeHeader("Range");
            return this.mHttpConnection.getConnection(downloadRequest);
        }
        throw exception;
    }

    private String getRealFileName(DownloadRequest downloadRequest, Headers headers) {
        String contentDisposition = headers.getContentDisposition();
        String str = null;
        if (!TextUtils.isEmpty(contentDisposition)) {
            String parseHeadValue = HeaderUtils.parseHeadValue(contentDisposition, "filename", null);
            str = parseHeadValue;
            if (!TextUtils.isEmpty(parseHeadValue)) {
                try {
                    parseHeadValue = URLDecoder.decode(parseHeadValue, downloadRequest.getParamsEncoding());
                } catch (UnsupportedEncodingException e) {
                }
                str = parseHeadValue;
                if (parseHeadValue.startsWith("\"")) {
                    str = parseHeadValue;
                    if (parseHeadValue.endsWith("\"")) {
                        str = parseHeadValue.substring(1, parseHeadValue.length() - 1);
                    }
                }
            }
        }
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            String url = downloadRequest.url();
            String path = URI.create(url).getPath();
            if (TextUtils.isEmpty(path)) {
                str2 = Integer.toString(url.hashCode());
            } else {
                String[] split = path.split("/");
                str2 = split[split.length - 1];
            }
        }
        return str2;
    }

    private void validateDevice(String str) {
        if (NetUtils.isNetworkAvailable()) {
            if (IOUtils.createFolder(str)) {
                return;
            }
            throw new StorageReadWriteError("SD card isn't available, please check SD card and permission: WRITE_EXTERNAL_STORAGE.\nYou must pay attention to Android6.0 RunTime Permissions: https://github.com/yanzhenjie/AndPermission.\nFailed to create folder: " + str);
        }
        throw new NetworkError("Network is not available, please check network and permission: INTERNET, ACCESS_WIFI_STATE, ACCESS_NETWORK_STATE.");
    }

    private void validateParam(DownloadRequest downloadRequest, DownloadListener downloadListener) {
        if (downloadRequest != null) {
            if (downloadListener == null) {
                throw new IllegalArgumentException("DownloadListener == null.");
            }
            return;
        }
        throw new IllegalArgumentException("DownloadRequest == null.");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(19:108|448|109|(3:444|111|(14:115|120|121|480|122|(2:124|(8:486|126|127|465|135|136|460|(9:138|452|(5:477|140|141|446|142)(2:159|(7:450|161|162|163|164|165|166)(3:458|170|171))|172|173|(2:175|(1:177)(4:178|164|165|166))|179|180|(6:182|(2:187|188)|189|471|190|(4:192|164|165|166)(16:193|194|(1:196)(1:197)|198|473|199|200|484|201|202|(3:203|204|(1:488)(2:206|(2:489|208)(8:209|210|211|212|(1:217)(1:216)|218|(6:220|221|(2:226|(1:228)(2:231|(3:233|234|493)(2:235|491)))(1:225)|229|230|492)(2:236|(3:238|239|490)(2:240|494))|241)))|242|(1:244)|245|246|247))(15:461|264|265|453|266|267|456|268|269|270|271|272|273|274|275))(21:282|283|284|285|286|287|288|289|290|291|292|293|294|295|296|297|298|299|300|301|302)))(3:328|482|329)|342|375|376|(4:378|379|380|(15:382|383|384|385|386|387|388|389|390|391|392|393|394|395|396))(10:397|398|399|400|401|402|403|404|405|406)|407|408|409|410))|118|119|120|121|480|122|(0)(0)|342|375|376|(0)(0)|407|408|409|410) */
    /* JADX WARN: Can't wrap try/catch for region: R(4:(4:(7:475|16|17|463|18|455|(20:20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|(4:81|82|83|84)(22:47|48|49|50|51|52|53|54|55|56|57|58|59|60|61|62|63|64|65|66|67|(5:69|70|71|72|(4:74|75|76|77))(3:78|79|80))|85)(3:87|88|89))(19:108|448|109|(3:444|111|(14:115|120|121|480|122|(2:124|(8:486|126|127|465|135|136|460|(9:138|452|(5:477|140|141|446|142)(2:159|(7:450|161|162|163|164|165|166)(3:458|170|171))|172|173|(2:175|(1:177)(4:178|164|165|166))|179|180|(6:182|(2:187|188)|189|471|190|(4:192|164|165|166)(16:193|194|(1:196)(1:197)|198|473|199|200|484|201|202|(3:203|204|(1:488)(2:206|(2:489|208)(8:209|210|211|212|(1:217)(1:216)|218|(6:220|221|(2:226|(1:228)(2:231|(3:233|234|493)(2:235|491)))(1:225)|229|230|492)(2:236|(3:238|239|490)(2:240|494))|241)))|242|(1:244)|245|246|247))(15:461|264|265|453|266|267|456|268|269|270|271|272|273|274|275))(21:282|283|284|285|286|287|288|289|290|291|292|293|294|295|296|297|298|299|300|301|302)))(3:328|482|329)|342|375|376|(4:378|379|380|(15:382|383|384|385|386|387|388|389|390|391|392|393|394|395|396))(10:397|398|399|400|401|402|403|404|405|406)|407|408|409|410))|118|119|120|121|480|122|(0)(0)|342|375|376|(0)(0)|407|408|409|410)|460|(0)(0)|(2:(0)|(1:478)))|465|135|136) */
    /* JADX WARN: Can't wrap try/catch for region: R(4:(7:475|16|17|463|18|455|(20:20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|(4:81|82|83|84)(22:47|48|49|50|51|52|53|54|55|56|57|58|59|60|61|62|63|64|65|66|67|(5:69|70|71|72|(4:74|75|76|77))(3:78|79|80))|85)(3:87|88|89))(19:108|448|109|(3:444|111|(14:115|120|121|480|122|(2:124|(8:486|126|127|465|135|136|460|(9:138|452|(5:477|140|141|446|142)(2:159|(7:450|161|162|163|164|165|166)(3:458|170|171))|172|173|(2:175|(1:177)(4:178|164|165|166))|179|180|(6:182|(2:187|188)|189|471|190|(4:192|164|165|166)(16:193|194|(1:196)(1:197)|198|473|199|200|484|201|202|(3:203|204|(1:488)(2:206|(2:489|208)(8:209|210|211|212|(1:217)(1:216)|218|(6:220|221|(2:226|(1:228)(2:231|(3:233|234|493)(2:235|491)))(1:225)|229|230|492)(2:236|(3:238|239|490)(2:240|494))|241)))|242|(1:244)|245|246|247))(15:461|264|265|453|266|267|456|268|269|270|271|272|273|274|275))(21:282|283|284|285|286|287|288|289|290|291|292|293|294|295|296|297|298|299|300|301|302)))(3:328|482|329)|342|375|376|(4:378|379|380|(15:382|383|384|385|386|387|388|389|390|391|392|393|394|395|396))(10:397|398|399|400|401|402|403|404|405|406)|407|408|409|410))|118|119|120|121|480|122|(0)(0)|342|375|376|(0)(0)|407|408|409|410)|460|(0)(0)|(2:(0)|(1:478))) */
    /* JADX WARN: Code restructure failed: missing block: B:305:0x0a1f, code lost:
        r12 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:306:0x0a20, code lost:
        r11 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:315:0x0a49, code lost:
        r12 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:0x0a4a, code lost:
        r11 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:0x0aa2, code lost:
        r11 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x0aad, code lost:
        r11 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:341:0x0ab9, code lost:
        r11 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:343:0x0acb, code lost:
        r11 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x0ad7, code lost:
        r11 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:349:0x0ae3, code lost:
        r11 = e;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 22, insn: 0x0c9f: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r22 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:439:0x0c9f */
    /* JADX WARN: Removed duplicated region for block: B:124:0x051f A[Catch: all -> 0x0aa2, Exception -> 0x0aad, IOException -> 0x0ab9, SocketTimeoutException -> 0x0acb, UnknownHostException -> 0x0ad7, MalformedURLException -> 0x0ae3, TRY_ENTER, TRY_LEAVE, TryCatch #37 {MalformedURLException -> 0x0ae3, SocketTimeoutException -> 0x0acb, UnknownHostException -> 0x0ad7, IOException -> 0x0ab9, Exception -> 0x0aad, all -> 0x0aa2, blocks: (B:122:0x0515, B:124:0x051f), top: B:480:0x0515 }] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0583  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x09ac  */
    /* JADX WARN: Removed duplicated region for block: B:328:0x0a87  */
    /* JADX WARN: Removed duplicated region for block: B:363:0x0b1d  */
    /* JADX WARN: Removed duplicated region for block: B:378:0x0b58  */
    /* JADX WARN: Removed duplicated region for block: B:397:0x0bcf  */
    /* JADX WARN: Type inference failed for: r0v273, types: [long] */
    /* JADX WARN: Type inference failed for: r0v456, types: [long] */
    /* JADX WARN: Type inference failed for: r0v496, types: [java.io.RandomAccessFile, java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v509, types: [long] */
    /* JADX WARN: Type inference failed for: r0v533, types: [long] */
    /* JADX WARN: Type inference failed for: r0v535, types: [long] */
    /* JADX WARN: Type inference failed for: r0v541, types: [long] */
    /* JADX WARN: Type inference failed for: r0v546 */
    /* JADX WARN: Type inference failed for: r0v550 */
    /* JADX WARN: Type inference failed for: r0v552, types: [long] */
    /* JADX WARN: Type inference failed for: r0v555 */
    /* JADX WARN: Type inference failed for: r0v563 */
    /* JADX WARN: Type inference failed for: r0v567 */
    /* JADX WARN: Type inference failed for: r0v570 */
    /* JADX WARN: Type inference failed for: r0v572, types: [long] */
    /* JADX WARN: Type inference failed for: r0v575, types: [long] */
    /* JADX WARN: Type inference failed for: r0v609, types: [long] */
    /* JADX WARN: Type inference failed for: r0v649, types: [long] */
    /* JADX WARN: Type inference failed for: r0v703, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v0, types: [com.yanzhenjie.nohttp.download.DownloadListener] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void download(int r10, com.yanzhenjie.nohttp.download.DownloadRequest r11, com.yanzhenjie.nohttp.download.DownloadListener r12) {
        /*
            Method dump skipped, instructions count: 3251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yanzhenjie.nohttp.download.Downloader.download(int, com.yanzhenjie.nohttp.download.DownloadRequest, com.yanzhenjie.nohttp.download.DownloadListener):void");
    }
}
