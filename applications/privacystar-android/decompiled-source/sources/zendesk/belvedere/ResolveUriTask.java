package zendesk.belvedere;

import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import java.lang.ref.WeakReference;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/belvedere/ResolveUriTask.class */
class ResolveUriTask extends AsyncTask<Uri, Void, List<MediaResult>> {
    private final WeakReference<Callback<List<MediaResult>>> callback;
    private final Context context;
    private final Storage storage;
    private final String subDirectory;

    private ResolveUriTask(Context context, Storage storage, Callback<List<MediaResult>> callback, String str) {
        this.context = context;
        this.storage = storage;
        this.subDirectory = str;
        this.callback = new WeakReference<>(callback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void start(Context context, Storage storage, Callback<List<MediaResult>> callback, List<Uri> list) {
        start(context, storage, callback, list, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void start(Context context, Storage storage, Callback<List<MediaResult>> callback, List<Uri> list, String str) {
        new ResolveUriTask(context, storage, callback, str).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, (Uri[]) list.toArray(new Uri[list.size()]));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02a8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02fa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0312 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x02c8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0243 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x025b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x02eb A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<zendesk.belvedere.MediaResult> doInBackground(android.net.Uri... r14) {
        /*
            Method dump skipped, instructions count: 809
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: zendesk.belvedere.ResolveUriTask.doInBackground(android.net.Uri[]):java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onPostExecute(List<MediaResult> list) {
        super.onPostExecute((ResolveUriTask) list);
        Callback<List<MediaResult>> callback = this.callback.get();
        if (callback != null) {
            callback.internalSuccess(list);
        } else {
            C2598L.m4w("Belvedere", "Callback null");
        }
    }
}
