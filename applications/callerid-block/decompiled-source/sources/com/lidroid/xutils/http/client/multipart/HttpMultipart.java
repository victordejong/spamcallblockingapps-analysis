package com.lidroid.xutils.http.client.multipart;

import com.lidroid.xutils.http.client.multipart.MultipartEntity;
import com.lidroid.xutils.http.client.multipart.content.ContentBody;
import java.io.ByteArrayOutputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.http.util.ByteArrayBuffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/http/client/multipart/HttpMultipart.class */
public class HttpMultipart {
    private static final ByteArrayBuffer CR_LF;
    private static final ByteArrayBuffer FIELD_SEP;
    private static final ByteArrayBuffer TWO_DASHES;
    private final String boundary;
    private final Charset charset;
    private final HttpMultipartMode mode;
    private final List<FormBodyPart> parts;
    private String subType;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.lidroid.xutils.http.client.multipart.HttpMultipart$1 */
    /* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/http/client/multipart/HttpMultipart$1.class */
    public static /* synthetic */ class C27321 {

        /* renamed from: $SwitchMap$com$lidroid$xutils$http$client$multipart$HttpMultipartMode */
        static final /* synthetic */ int[] f11341x1849ce0f;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[HttpMultipartMode.values().length];
            f11341x1849ce0f = iArr;
            try {
                iArr[HttpMultipartMode.STRICT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f11341x1849ce0f[HttpMultipartMode.BROWSER_COMPATIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    static {
        Charset charset = MIME.DEFAULT_CHARSET;
        FIELD_SEP = encode(charset, ": ");
        CR_LF = encode(charset, "\r\n");
        TWO_DASHES = encode(charset, "--");
    }

    public HttpMultipart(String str, String str2) {
        this(str, null, str2);
    }

    public HttpMultipart(String str, Charset charset, String str2) {
        this(str, charset, str2, HttpMultipartMode.STRICT);
    }

    public HttpMultipart(String str, Charset charset, String str2, HttpMultipartMode httpMultipartMode) {
        if (str == null) {
            throw new IllegalArgumentException("Multipart subtype may not be null");
        } else if (str2 != null) {
            this.subType = str;
            this.charset = charset == null ? MIME.DEFAULT_CHARSET : charset;
            this.boundary = str2;
            this.parts = new ArrayList();
            this.mode = httpMultipartMode;
        } else {
            throw new IllegalArgumentException("Multipart boundary may not be null");
        }
    }

    private void doWriteTo(HttpMultipartMode httpMultipartMode, OutputStream outputStream, MultipartEntity.CallBackInfo callBackInfo, boolean z) {
        ByteArrayBuffer byteArrayBuffer;
        ByteArrayBuffer byteArrayBuffer2;
        MinimalField next;
        MinimalField field;
        ByteArrayBuffer byteArrayBuffer3;
        MinimalField field2;
        callBackInfo.pos = 0L;
        ByteArrayBuffer encode = encode(this.charset, getBoundary());
        for (FormBodyPart formBodyPart : this.parts) {
            if (callBackInfo.doCallBack(true)) {
                writeBytes(TWO_DASHES, outputStream);
                callBackInfo.pos += byteArrayBuffer2.length();
                writeBytes(encode, outputStream);
                callBackInfo.pos += encode.length();
                ByteArrayBuffer byteArrayBuffer4 = CR_LF;
                writeBytes(byteArrayBuffer4, outputStream);
                callBackInfo.pos += byteArrayBuffer4.length();
                MinimalFieldHeader header = formBodyPart.getHeader();
                int i = C27321.f11341x1849ce0f[httpMultipartMode.ordinal()];
                if (i == 1) {
                    Iterator<MinimalField> it = header.iterator();
                    while (it.hasNext()) {
                        writeField(it.next(), outputStream);
                        long j = callBackInfo.pos;
                        Charset charset = MIME.DEFAULT_CHARSET;
                        callBackInfo.pos = j + encode(charset, next.getName() + next.getBody()).length() + FIELD_SEP.length() + CR_LF.length();
                    }
                } else if (i == 2) {
                    writeField(header.getField(MIME.CONTENT_DISPOSITION), this.charset, outputStream);
                    callBackInfo.pos = callBackInfo.pos + ((long) (encode(this.charset, field.getName() + field.getBody()).length() + FIELD_SEP.length() + byteArrayBuffer4.length()));
                    if (formBodyPart.getBody().getFilename() != null) {
                        writeField(header.getField(MIME.CONTENT_TYPE), this.charset, outputStream);
                        long j2 = callBackInfo.pos;
                        Charset charset2 = this.charset;
                        callBackInfo.pos = j2 + encode(charset2, field2.getName() + field2.getBody()).length() + byteArrayBuffer3.length() + byteArrayBuffer4.length();
                    }
                }
                ByteArrayBuffer byteArrayBuffer5 = CR_LF;
                writeBytes(byteArrayBuffer5, outputStream);
                callBackInfo.pos += byteArrayBuffer5.length();
                if (z) {
                    ContentBody body = formBodyPart.getBody();
                    body.setCallBackInfo(callBackInfo);
                    body.writeTo(outputStream);
                }
                writeBytes(byteArrayBuffer5, outputStream);
                callBackInfo.pos += byteArrayBuffer5.length();
            } else {
                throw new InterruptedIOException("cancel");
            }
        }
        ByteArrayBuffer byteArrayBuffer6 = TWO_DASHES;
        writeBytes(byteArrayBuffer6, outputStream);
        callBackInfo.pos += byteArrayBuffer6.length();
        writeBytes(encode, outputStream);
        callBackInfo.pos += encode.length();
        writeBytes(byteArrayBuffer6, outputStream);
        callBackInfo.pos += byteArrayBuffer6.length();
        writeBytes(CR_LF, outputStream);
        callBackInfo.pos += byteArrayBuffer.length();
        callBackInfo.doCallBack(true);
    }

    private void doWriteTo(HttpMultipartMode httpMultipartMode, OutputStream outputStream, boolean z) {
        doWriteTo(httpMultipartMode, outputStream, MultipartEntity.CallBackInfo.DEFAULT, z);
    }

    private static ByteArrayBuffer encode(Charset charset, String str) {
        ByteBuffer encode = charset.encode(CharBuffer.wrap(str));
        ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(encode.remaining());
        byteArrayBuffer.append(encode.array(), encode.position(), encode.remaining());
        return byteArrayBuffer;
    }

    private static void writeBytes(String str, OutputStream outputStream) {
        writeBytes(encode(MIME.DEFAULT_CHARSET, str), outputStream);
    }

    private static void writeBytes(String str, Charset charset, OutputStream outputStream) {
        writeBytes(encode(charset, str), outputStream);
    }

    private static void writeBytes(ByteArrayBuffer byteArrayBuffer, OutputStream outputStream) {
        outputStream.write(byteArrayBuffer.buffer(), 0, byteArrayBuffer.length());
        outputStream.flush();
    }

    private static void writeField(MinimalField minimalField, OutputStream outputStream) {
        writeBytes(minimalField.getName(), outputStream);
        writeBytes(FIELD_SEP, outputStream);
        writeBytes(minimalField.getBody(), outputStream);
        writeBytes(CR_LF, outputStream);
    }

    private static void writeField(MinimalField minimalField, Charset charset, OutputStream outputStream) {
        writeBytes(minimalField.getName(), charset, outputStream);
        writeBytes(FIELD_SEP, outputStream);
        writeBytes(minimalField.getBody(), charset, outputStream);
        writeBytes(CR_LF, outputStream);
    }

    public void addBodyPart(FormBodyPart formBodyPart) {
        if (formBodyPart != null) {
            this.parts.add(formBodyPart);
        }
    }

    public List<FormBodyPart> getBodyParts() {
        return this.parts;
    }

    public String getBoundary() {
        return this.boundary;
    }

    public Charset getCharset() {
        return this.charset;
    }

    public HttpMultipartMode getMode() {
        return this.mode;
    }

    public String getSubType() {
        return this.subType;
    }

    public long getTotalLength() {
        long j = 0;
        for (FormBodyPart formBodyPart : this.parts) {
            long contentLength = formBodyPart.getBody().getContentLength();
            if (contentLength < 0) {
                return -1L;
            }
            j += contentLength;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            doWriteTo(this.mode, byteArrayOutputStream, false);
            return j + byteArrayOutputStream.toByteArray().length;
        } catch (Throwable th) {
            return -1L;
        }
    }

    public void setSubType(String str) {
        this.subType = str;
    }

    public void writeTo(OutputStream outputStream, MultipartEntity.CallBackInfo callBackInfo) {
        doWriteTo(this.mode, outputStream, callBackInfo, true);
    }
}
