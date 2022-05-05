package com.android.contacts.util;

import android.app.LoaderManager;
import android.content.Context;
import android.content.Loader;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/EmptyLoader.class */
public class EmptyLoader extends Loader<Object> {

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/EmptyLoader$Callback.class */
    public static class Callback implements LoaderManager.LoaderCallbacks<Object> {
        private final Context mContext;

        public Callback(Context context) {
            this.mContext = context.getApplicationContext();
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public Loader<Object> onCreateLoader(int i, Bundle bundle) {
            return new EmptyLoader(this.mContext);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoadFinished(Loader<Object> loader, Object obj) {
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<Object> loader) {
        }
    }

    public EmptyLoader(Context context) {
        super(context);
    }
}
