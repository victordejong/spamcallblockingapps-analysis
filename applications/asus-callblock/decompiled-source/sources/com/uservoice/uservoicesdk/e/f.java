package com.uservoice.uservoicesdk.e;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.AsyncTask;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.uservoice.uservoicesdk.a.a;
import com.uservoice.uservoicesdk.activity.ForumActivity;
import com.uservoice.uservoicesdk.activity.c;
import com.uservoice.uservoicesdk.d;
import com.uservoice.uservoicesdk.i.b;
import com.uservoice.uservoicesdk.model.Suggestion;
import com.uservoice.uservoicesdk.model.f;
import com.uservoice.uservoicesdk.ui.a;
import com.uservoice.uservoicesdk.ui.e;
import com.uservoice.uservoicesdk.ui.l;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
@SuppressLint({"ValidFragment"})
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/e/f.class */
public final class f extends b {
    Suggestion ai;
    e<com.uservoice.uservoicesdk.model.f> aj;
    View ak;
    int al = -1;
    private View am;
    private Context an;
    private String ao;

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view) {
        if (view != null) {
            TextView textView = (TextView) view.findViewById(d.b.A);
            View findViewById = view.findViewById(d.b.t);
            if (textView != null) {
                if (this.al >= 0) {
                    textView.setText(l.a(view, d.e.c, this.al).toUpperCase(Locale.getDefault()));
                    textView.setVisibility(0);
                } else {
                    textView.setVisibility(8);
                }
            }
            if (findViewById == null) {
                return;
            }
            if (this.al < 0) {
                findViewById.setVisibility(0);
            } else {
                findViewById.setVisibility(8);
            }
        }
    }

    @Override // android.support.v4.app.h
    public final Dialog a() {
        if (com.uservoice.uservoicesdk.e.a().f4631b == null) {
            a(false);
        }
        this.ai = (Suggestion) getArguments().getParcelable("suggestion");
        this.ao = getArguments().getString("deflecting_type", "Suggestion");
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        this.an = getActivity();
        int i = this.f69b;
        this.f68a = 1;
        if (this.f68a == 2 || this.f68a == 3) {
            this.f69b = 16973913;
        }
        if (i != 0) {
            this.f69b = i;
        }
        if (!l.a((Context) getActivity())) {
            builder.setInverseBackgroundForced(true);
        }
        this.ak = getActivity().getLayoutInflater().inflate(d.c.l, (ViewGroup) null);
        this.am = getActivity().getLayoutInflater().inflate(d.c.m, (ViewGroup) null);
        if (this.ai.m == 0) {
            this.al = 0;
        }
        this.am.findViewById(d.b.ab).setOnClickListener(new View.OnClickListener() { // from class: com.uservoice.uservoicesdk.e.f.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                a<Suggestion> aVar = new a<Suggestion>(f.this.getActivity()) { // from class: com.uservoice.uservoicesdk.e.f.1.1
                    @Override // com.uservoice.uservoicesdk.j.a
                    public final /* synthetic */ void a(Object obj) {
                        Suggestion suggestion = (Suggestion) obj;
                        if (f.this.getActivity() instanceof c) {
                            com.uservoice.uservoicesdk.d.a.a("subscribed", f.this.ao, suggestion);
                        }
                        f.this.d();
                    }
                };
                if (f.this.ai.p) {
                    f.this.ai.b(aVar);
                } else {
                    new e(f.this.ai, f.this, f.this.ao).a(f.this.getFragmentManager(), "SubscribeDialogFragment");
                }
            }
        });
        this.am.findViewById(d.b.P).setOnClickListener(new View.OnClickListener() { // from class: com.uservoice.uservoicesdk.e.f.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                new a(f.this.ai, f.this).a(f.this.getActivity().getSupportFragmentManager(), "CommentDialogFragment");
            }
        });
        ListView listView = (ListView) this.ak.findViewById(d.b.M);
        listView.addHeaderView(this.am);
        a(this.ak, this.ai);
        this.aj = new e<com.uservoice.uservoicesdk.model.f>(getActivity(), d.c.k, new ArrayList()) { // from class: com.uservoice.uservoicesdk.e.f.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.uservoice.uservoicesdk.ui.d
            public final void a(int i2, com.uservoice.uservoicesdk.j.a<List<com.uservoice.uservoicesdk.model.f>> aVar) {
                com.uservoice.uservoicesdk.model.f.a(f.this.ai, i2, aVar, new f.a() { // from class: com.uservoice.uservoicesdk.e.f.3.1
                    @Override // com.uservoice.uservoicesdk.model.f.a
                    public final void a(int i3) {
                        f.this.al = i3;
                        f.this.a(f.this.ak);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.uservoice.uservoicesdk.ui.d
            public final /* synthetic */ void a(View view, Object obj) {
                com.uservoice.uservoicesdk.model.f fVar = (com.uservoice.uservoicesdk.model.f) obj;
                ((TextView) view.findViewById(d.b.ai)).setText(fVar.f4750a);
                ((TextView) view.findViewById(d.b.N)).setText(fVar.f4751b);
                ((TextView) view.findViewById(d.b.E)).setText(DateFormat.getDateInstance().format(fVar.c));
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.uservoice.uservoicesdk.ui.e
            public final int b() {
                return f.this.ai.m;
            }

            @Override // com.uservoice.uservoicesdk.ui.d, android.widget.BaseAdapter, android.widget.ListAdapter
            public final boolean isEnabled(int i2) {
                return false;
            }
        };
        listView.setAdapter((ListAdapter) this.aj);
        listView.setDivider(null);
        listView.setOnScrollListener(new com.uservoice.uservoicesdk.ui.f(this.aj));
        builder.setView(this.ak);
        builder.setNegativeButton(d.f.A, (DialogInterface.OnClickListener) null);
        com.uservoice.uservoicesdk.a.a.a(a.EnumC0133a.VIEW_IDEA, this.ai.c());
        return builder.create();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(View view, Suggestion suggestion) {
        Bitmap bitmap;
        boolean z;
        com.uservoice.uservoicesdk.i.a aVar = null;
        TextView textView = (TextView) view.findViewById(d.b.aa);
        TextView textView2 = (TextView) view.findViewById(d.b.S);
        View findViewById = view.findViewById(d.b.R);
        TextView textView3 = (TextView) view.findViewById(d.b.al);
        if (suggestion.p) {
            ((CheckBox) view.findViewById(d.b.ac)).setChecked(true);
        }
        if (suggestion.c == null) {
            textView.setVisibility(8);
            textView2.setTextColor(-12303292);
            findViewById.setBackgroundColor(-12303292);
        } else {
            int parseColor = Color.parseColor(suggestion.d);
            textView.setBackgroundColor(parseColor);
            textView.setText(suggestion.c);
            textView2.setTextColor(parseColor);
            textView2.setText(String.format(getString(d.f.x), suggestion.c.toUpperCase(Locale.getDefault())));
            findViewById.setBackgroundColor(parseColor);
        }
        textView3.setText(suggestion.f4724a);
        ((TextView) view.findViewById(d.b.ai)).setText(suggestion.f4725b);
        ((TextView) view.findViewById(d.b.D)).setText(String.format(view.getContext().getString(d.f.M), suggestion.g, DateFormat.getDateInstance().format(suggestion.l)));
        if (suggestion.h == null) {
            view.findViewById(d.b.z).setVisibility(8);
        } else {
            view.findViewById(d.b.z).setVisibility(0);
            ((TextView) view.findViewById(d.b.y)).setText(suggestion.i);
            ((TextView) view.findViewById(d.b.Q)).setText(DateFormat.getDateInstance().format(suggestion.k));
            ((TextView) view.findViewById(d.b.T)).setText(suggestion.h);
            ImageView imageView = (ImageView) view.findViewById(d.b.x);
            b a2 = b.a();
            String str = suggestion.j;
            SoftReference<Bitmap> softReference = a2.f4699a.get(str);
            if (softReference != null) {
                a2.f4699a.remove(str);
                bitmap = softReference.get();
            } else {
                bitmap = null;
            }
            if (bitmap != null) {
                imageView.setImageBitmap(bitmap);
                a2.f4699a.put(str, softReference);
            } else {
                WeakReference<com.uservoice.uservoicesdk.i.a> weakReference = a2.f4700b.get(str);
                com.uservoice.uservoicesdk.i.a aVar2 = weakReference != null ? weakReference.get() : null;
                int hashCode = "tag_for_download_url".hashCode();
                Object tag = imageView.getTag(hashCode);
                if (tag != null && (tag instanceof String)) {
                    String str2 = (String) tag;
                    WeakReference<com.uservoice.uservoicesdk.i.a> weakReference2 = a2.f4700b.get(str2);
                    if (weakReference2 != null) {
                        aVar = weakReference2.get();
                    }
                    if (aVar != null) {
                        Iterator<WeakReference<ImageView>> it = aVar.f4697a.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                WeakReference<ImageView> next = it.next();
                                ImageView imageView2 = next.get();
                                if (imageView2 != null && imageView2.equals(imageView)) {
                                    aVar.f4697a.remove(next);
                                    break;
                                }
                            } else {
                                break;
                            }
                        }
                        Iterator<WeakReference<ImageView>> it2 = aVar.f4697a.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                if (it2.next().get() != null) {
                                    z = true;
                                    break;
                                }
                            } else {
                                z = false;
                                break;
                            }
                        }
                        if (!z) {
                            aVar.f4697a.clear();
                        }
                        if (!z) {
                            aVar.cancel(true);
                            a2.f4700b.remove(str2);
                        }
                    }
                }
                imageView.setTag(hashCode, str);
                if (aVar2 == null || aVar2.isCancelled()) {
                    a2.f4700b.remove(str);
                    com.uservoice.uservoicesdk.i.a aVar3 = new com.uservoice.uservoicesdk.i.a(str);
                    aVar3.a(imageView);
                    aVar3.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                    a2.f4700b.put(str, new WeakReference<>(aVar3));
                } else {
                    aVar2.a(imageView);
                }
            }
        }
        a(view);
        if (com.uservoice.uservoicesdk.e.a().g == null || !com.uservoice.uservoicesdk.e.a().g.j) {
            ((TextView) view.findViewById(d.b.ad)).setText(String.format(view.getContext().getResources().getQuantityString(d.e.f4624a, suggestion.n), l.a(view, d.e.d, suggestion.n)));
        } else {
            ((TextView) view.findViewById(d.b.ad)).setText(String.format(view.getContext().getResources().getString(d.f.N), suggestion.a()));
        }
    }

    public final void d() {
        if (getActivity() != null) {
            CheckBox checkBox = (CheckBox) this.am.findViewById(d.b.ac);
            if (this.ai.p) {
                Toast.makeText(this.an, d.f.g, 0).show();
                checkBox.setChecked(true);
            } else {
                Toast.makeText(this.an, d.f.j, 0).show();
                checkBox.setChecked(false);
            }
            a(this.ak, this.ai);
            if (getActivity() instanceof ForumActivity) {
                ((e) ((com.uservoice.uservoicesdk.c.a) ((ForumActivity) getActivity())).q).notifyDataSetChanged();
            }
        }
    }
}
