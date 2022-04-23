package com.bytedance.sdk.openadsdk.component.reward.view;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.dislike.TTDislikeListView;
import com.bytedance.sdk.openadsdk.dislike.c;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.x;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog.class */
public class RewardDislikeDialog extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private View f8723a;

    /* renamed from: b  reason: collision with root package name */
    private TTDislikeListView f8724b;

    /* renamed from: c  reason: collision with root package name */
    private TTDislikeListView f8725c;

    /* renamed from: d  reason: collision with root package name */
    private RelativeLayout f8726d;
    private View e;
    private c.b f;
    private c.b g;
    private i h;
    private a i;
    private boolean j;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a.class */
    public interface a {
        void a(int i, FilterWord filterWord);

        void a(View view);

        void b(View view);

        void c(View view);
    }

    public RewardDislikeDialog(Context context) {
        this(context, (AttributeSet) null);
    }

    public RewardDislikeDialog(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RewardDislikeDialog(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.j = false;
        a(context, attributeSet);
    }

    public RewardDislikeDialog(Context context, i iVar) {
        this(context);
        this.h = iVar;
        c();
    }

    private void a(Context context, AttributeSet attributeSet) {
        setClickable(true);
        setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.RewardDislikeDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RewardDislikeDialog.this.b();
            }
        });
        setBackgroundColor(Color.parseColor("#80000000"));
        this.f8723a = LayoutInflater.from(context).inflate(x.f(context, "tt_dislike_dialog_layout"), (ViewGroup) this, false);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 17;
        layoutParams.leftMargin = ag.c(getContext(), 20.0f);
        layoutParams.rightMargin = ag.c(getContext(), 20.0f);
        this.f8723a.setLayoutParams(layoutParams);
        this.f8723a.setClickable(true);
        d();
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(FilterWord filterWord) {
        if (filterWord != null) {
            c.b bVar = this.g;
            if (bVar != null) {
                bVar.a(filterWord.getOptions());
            }
            RelativeLayout relativeLayout = this.f8726d;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(0);
            }
            View view = this.e;
            if (view != null) {
                view.setVisibility(0);
            }
            TTDislikeListView tTDislikeListView = this.f8724b;
            if (tTDislikeListView != null) {
                tTDislikeListView.setVisibility(8);
            }
            TTDislikeListView tTDislikeListView2 = this.f8725c;
            if (tTDislikeListView2 != null) {
                tTDislikeListView2.setVisibility(0);
            }
        }
    }

    private void c() {
        if (this.h != null) {
            LayoutInflater from = LayoutInflater.from(getContext());
            c.b bVar = new c.b(from, this.h.U());
            this.f = bVar;
            this.f8724b.setAdapter((ListAdapter) bVar);
            c.b bVar2 = new c.b(from, new ArrayList());
            this.g = bVar2;
            bVar2.a(false);
            this.f8725c.setAdapter((ListAdapter) this.g);
            this.f8724b.setMaterialMeta(this.h);
            this.f8725c.setMaterialMeta(this.h);
        }
    }

    private void d() {
        this.f8726d = (RelativeLayout) this.f8723a.findViewById(x.e(getContext(), "tt_dislike_title_content"));
        this.e = this.f8723a.findViewById(x.e(getContext(), "tt_dislike_line1"));
        this.f8723a.findViewById(x.e(getContext(), "tt_dislike_header_back")).setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.RewardDislikeDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RewardDislikeDialog.this.e();
                if (RewardDislikeDialog.this.i != null) {
                    RewardDislikeDialog.this.i.c(view);
                }
            }
        });
        TTDislikeListView tTDislikeListView = (TTDislikeListView) this.f8723a.findViewById(x.e(getContext(), "tt_filer_words_lv"));
        this.f8724b = tTDislikeListView;
        tTDislikeListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.RewardDislikeDialog.3
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                try {
                    FilterWord filterWord = (FilterWord) adapterView.getAdapter().getItem(i);
                    if (filterWord.hasSecondOptions()) {
                        RewardDislikeDialog.this.a(filterWord);
                        if (RewardDislikeDialog.this.i != null) {
                            RewardDislikeDialog.this.i.a(i, filterWord);
                            return;
                        }
                        return;
                    }
                } catch (Throwable th) {
                }
                if (RewardDislikeDialog.this.i != null) {
                    try {
                        RewardDislikeDialog.this.i.a(i, RewardDislikeDialog.this.h.U().get(i));
                    } catch (Throwable th2) {
                    }
                }
                RewardDislikeDialog.this.b();
            }
        });
        TTDislikeListView tTDislikeListView2 = (TTDislikeListView) this.f8723a.findViewById(x.e(getContext(), "tt_filer_words_lv_second"));
        this.f8725c = tTDislikeListView2;
        tTDislikeListView2.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.RewardDislikeDialog.4
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (RewardDislikeDialog.this.i != null) {
                    try {
                        RewardDislikeDialog.this.i.a(i, (FilterWord) adapterView.getAdapter().getItem(i));
                    } catch (Throwable th) {
                    }
                }
                RewardDislikeDialog.this.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        RelativeLayout relativeLayout = this.f8726d;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
        }
        View view = this.e;
        if (view != null) {
            view.setVisibility(8);
        }
        TTDislikeListView tTDislikeListView = this.f8724b;
        if (tTDislikeListView != null) {
            tTDislikeListView.setVisibility(0);
        }
        c.b bVar = this.g;
        if (bVar != null) {
            bVar.a();
        }
        TTDislikeListView tTDislikeListView2 = this.f8725c;
        if (tTDislikeListView2 != null) {
            tTDislikeListView2.setVisibility(8);
        }
    }

    public void a() {
        if (this.f8723a.getParent() == null) {
            addView(this.f8723a);
        }
        e();
        setVisibility(0);
        this.j = true;
        a aVar = this.i;
        if (aVar != null) {
            aVar.a(this);
        }
    }

    public void b() {
        setVisibility(8);
        this.j = false;
        a aVar = this.i;
        if (aVar != null) {
            aVar.b(this);
        }
    }

    public void setCallback(a aVar) {
        this.i = aVar;
    }
}
