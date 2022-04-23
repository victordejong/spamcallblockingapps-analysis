package com.bytedance.sdk.openadsdk.dislike;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.d.e;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/dislike/TTDislikeListView.class */
public class TTDislikeListView extends ListView {

    /* renamed from: a  reason: collision with root package name */
    private i f9471a;

    /* renamed from: b  reason: collision with root package name */
    private AdapterView.OnItemClickListener f9472b;

    /* renamed from: c  reason: collision with root package name */
    private AdapterView.OnItemClickListener f9473c = new AdapterView.OnItemClickListener() { // from class: com.bytedance.sdk.openadsdk.dislike.TTDislikeListView.1
        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (TTDislikeListView.this.getAdapter() == null || TTDislikeListView.this.getAdapter().getItem(i) == null || !(TTDislikeListView.this.getAdapter().getItem(i) instanceof FilterWord)) {
                throw new IllegalArgumentException("adapter数据异常，必须为FilterWord");
            }
            FilterWord filterWord = (FilterWord) TTDislikeListView.this.getAdapter().getItem(i);
            if (!filterWord.hasSecondOptions()) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(filterWord);
                if (TTDislikeListView.this.f9471a != null) {
                    e.a(TTDislikeListView.this.f9471a, arrayList);
                }
            }
            try {
                if (TTDislikeListView.this.f9472b != null) {
                    TTDislikeListView.this.f9472b.onItemClick(adapterView, view, i, j);
                }
            } catch (Throwable th) {
            }
        }
    };

    public TTDislikeListView(Context context) {
        super(context);
        a();
    }

    public TTDislikeListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public TTDislikeListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a();
    }

    private void a() {
        super.setOnItemClickListener(this.f9473c);
    }

    public void setMaterialMeta(i iVar) {
        this.f9471a = iVar;
    }

    @Override // android.widget.AdapterView
    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.f9472b = onItemClickListener;
    }
}
