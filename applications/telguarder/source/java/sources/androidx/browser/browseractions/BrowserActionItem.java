package androidx.browser.browseractions;

import android.app.PendingIntent;
import android.net.Uri;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/browser/browseractions/BrowserActionItem.class */
public class BrowserActionItem {
    private final PendingIntent mAction;
    private int mIconId;
    private Uri mIconUri;
    private Runnable mRunnableAction;
    private final String mTitle;

    public BrowserActionItem(String str, PendingIntent pendingIntent) {
        this(str, pendingIntent, 0);
    }

    public BrowserActionItem(String str, PendingIntent pendingIntent, int i) {
        this.mTitle = str;
        this.mAction = pendingIntent;
        this.mIconId = i;
    }

    public BrowserActionItem(String str, PendingIntent pendingIntent, Uri uri) {
        this.mTitle = str;
        this.mAction = pendingIntent;
        this.mIconUri = uri;
    }

    public BrowserActionItem(String str, Runnable runnable) {
        this.mTitle = str;
        this.mAction = null;
        this.mRunnableAction = runnable;
    }

    public PendingIntent getAction() {
        PendingIntent pendingIntent = this.mAction;
        if (pendingIntent != null) {
            return pendingIntent;
        }
        throw new IllegalStateException("Can't call getAction on BrowserActionItem with null action.");
    }

    public int getIconId() {
        return this.mIconId;
    }

    public Uri getIconUri() {
        return this.mIconUri;
    }

    public Runnable getRunnableAction() {
        return this.mRunnableAction;
    }

    public String getTitle() {
        return this.mTitle;
    }
}
