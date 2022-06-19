package com.j256.ormlite.android.apptools;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.support.ConnectionSource;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/android/apptools/OrmLiteBaseActivity.class */
public abstract class OrmLiteBaseActivity<H extends OrmLiteSqliteOpenHelper> extends Activity {
    private static Logger logger = LoggerFactory.getLogger(OrmLiteBaseActivity.class);
    private volatile boolean created = false;
    private volatile boolean destroyed = false;
    private volatile H helper;

    public ConnectionSource getConnectionSource() {
        return getHelper().getConnectionSource();
    }

    public H getHelper() {
        if (this.helper == null) {
            if (!this.created) {
                throw new IllegalStateException("A call has not been made to onCreate() yet so the helper is null");
            }
            if (!this.destroyed) {
                throw new IllegalStateException("Helper is null for some unknown reason");
            }
            throw new IllegalStateException("A call to onDestroy has already been made and the helper cannot be used after that point");
        }
        return this.helper;
    }

    protected H getHelperInternal(Context context) {
        H h = (H) OpenHelperManager.getHelper(context);
        logger.trace("{}: got new helper {} from OpenHelperManager", this, h);
        return h;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        if (this.helper == null) {
            this.helper = getHelperInternal(this);
            this.created = true;
        }
        super.onCreate(bundle);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        releaseHelper(this.helper);
        this.destroyed = true;
    }

    protected void releaseHelper(H h) {
        OpenHelperManager.releaseHelper();
        logger.trace("{}: helper {} was released, set to null", this, h);
        this.helper = null;
    }

    public String toString() {
        return getClass().getSimpleName() + "@" + Integer.toHexString(super.hashCode());
    }
}
