package com.callerid.block.start;

import android.os.AsyncTask;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/BlockListActivity$b.class */
class BlockListActivity$b implements Runnable {

    /* renamed from: b */
    final /* synthetic */ BlockListActivity f4911b;

    BlockListActivity$b(BlockListActivity blockListActivity) {
        this.f4911b = blockListActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            new AsyncTask<Object, Void, Object>(this.f4911b) { // from class: com.callerid.block.start.BlockListActivity$c

                /* renamed from: a */
                WeakReference<BlockListActivity> f4912a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f4912a = new WeakReference<>(blockListActivity);
                }

                @Override // android.os.AsyncTask
                protected Object doInBackground(Object[] objArr) {
                    BlockListActivity blockListActivity2 = this.f4912a.get();
                    if (blockListActivity2 != null) {
                        BlockListActivity.R(blockListActivity2, BlockListActivity.S(blockListActivity2).m9838e());
                        return null;
                    }
                    return null;
                }

                @Override // android.os.AsyncTask
                protected void onPostExecute(Object obj) {
                    super.onPostExecute(obj);
                    BlockListActivity blockListActivity2 = this.f4912a.get();
                    if (blockListActivity2 != null) {
                        blockListActivity2.U();
                        if (BlockListActivity.Q(blockListActivity2) == null || BlockListActivity.T(blockListActivity2) == null) {
                            return;
                        }
                        BlockListActivity$BlackAdapter.m9940a(BlockListActivity.T(blockListActivity2), BlockListActivity.Q(blockListActivity2));
                    }
                }
            }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
