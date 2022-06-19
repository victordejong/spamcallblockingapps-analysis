package com.bytedance.sdk.openadsdk.dislike;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/dislike/TTDislikeListView.class */
public class TTDislikeListView extends ListView {

    /* renamed from: a */
    private C4557i f17772a;

    /* renamed from: b */
    private AdapterView.OnItemClickListener f17773b;

    /* renamed from: c */
    private AdapterView.OnItemClickListener f17774c = new AdapterView.OnItemClickListener() { // from class: com.bytedance.sdk.openadsdk.dislike.TTDislikeListView.1
        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (TTDislikeListView.this.getAdapter() == null || TTDislikeListView.this.getAdapter().getItem(i) == null || !(TTDislikeListView.this.getAdapter().getItem(i) instanceof FilterWord)) {
                throw new IllegalArgumentException("adapter数据异常，必须为FilterWord");
            }
            FilterWord filterWord = (FilterWord) TTDislikeListView.this.getAdapter().getItem(i);
            if (!filterWord.hasSecondOptions()) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(filterWord);
                if (TTDislikeListView.this.f17772a != null) {
                    C4811e.m33871a(TTDislikeListView.this.f17772a, arrayList);
                }
            }
            try {
                if (TTDislikeListView.this.f17773b == null) {
                    return;
                }
                TTDislikeListView.this.f17773b.onItemClick(adapterView, view, i, j);
            } catch (Throwable th) {
            }
        }
    };

    public TTDislikeListView(Context context) {
        super(context);
        m33743a();
    }

    public TTDislikeListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m33743a();
    }

    public TTDislikeListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m33743a();
    }

    /* renamed from: a */
    private void m33743a() {
        super.setOnItemClickListener(this.f17774c);
    }

    public void setMaterialMeta(C4557i c4557i) {
        this.f17772a = c4557i;
    }

    @Override // android.widget.AdapterView
    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.f17773b = onItemClickListener;
    }
}
