package com.android.contacts.util;

import android.content.AsyncQueryHandler;
import android.content.Context;
import android.database.Cursor;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/NotifyingAsyncQueryHandler.class */
public class NotifyingAsyncQueryHandler extends AsyncQueryHandler {
    private WeakReference<AsyncQueryListener> mListener;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener.class */
    public interface AsyncQueryListener {
        void onQueryComplete(int i, Object obj, Cursor cursor);
    }

    public NotifyingAsyncQueryHandler(Context context, AsyncQueryListener asyncQueryListener) {
        super(context.getContentResolver());
        setQueryListener(asyncQueryListener);
    }

    @Override // android.content.AsyncQueryHandler
    protected void onQueryComplete(int i, Object obj, Cursor cursor) {
        AsyncQueryListener asyncQueryListener = this.mListener.get();
        if (asyncQueryListener != null) {
            asyncQueryListener.onQueryComplete(i, obj, cursor);
        } else if (cursor != null) {
            cursor.close();
        }
    }

    public void setQueryListener(AsyncQueryListener asyncQueryListener) {
        this.mListener = new WeakReference<>(asyncQueryListener);
    }
}
