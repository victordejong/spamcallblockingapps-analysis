package com.callerid.block.mvc.controller;

import android.os.AsyncTask;
import android.text.Editable;
import android.text.TextWatcher;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.util.C1184j;
import com.callerid.block.util.C1209r;
import com.callerid.block.util.C1215t;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/EZSearchNumberActivity$c.class */
class EZSearchNumberActivity$c implements TextWatcher {

    /* renamed from: b */
    final /* synthetic */ EZSearchNumberActivity f4638b;

    EZSearchNumberActivity$c(EZSearchNumberActivity eZSearchNumberActivity) {
        this.f4638b = eZSearchNumberActivity;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        C1227w.m9527a("searchNumber", "afterTextChanged");
        if (this.f4638b.w.size() > 0) {
            this.f4638b.w.clear();
            this.f4638b.y.notifyDataSetChanged();
            this.f4638b.v.setVisibility(8);
            this.f4638b.v.setClickable(false);
            EZSearchNumberActivity.e0(this.f4638b).setVisibility(0);
            EZSearchNumberActivity.e0(this.f4638b).setClickable(true);
            EZSearchNumberActivity.T(this.f4638b);
        } else if (EZSearchNumberActivity.Z(this.f4638b)) {
            this.f4638b.v.setVisibility(8);
            this.f4638b.v.setClickable(false);
            EZSearchNumberActivity.T(this.f4638b);
            EZSearchNumberActivity.a0(this.f4638b, false);
        }
        if (EZSearchNumberActivity.k0(this.f4638b) != null && EZSearchNumberActivity.k0(this.f4638b).getVisibility() == 0) {
            EZSearchNumberActivity.k0(this.f4638b).setVisibility(8);
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        try {
            if (EZSearchNumberActivity.c0(this.f4638b)) {
                EZSearchNumberActivity.d0(this.f4638b, false);
                return;
            }
            C1227w.m9527a("searchNumber", "onTextChanged---CharSequence:" + ((Object) charSequence));
            if (charSequence != null && !"".equals(charSequence)) {
                if ((charSequence.toString().startsWith("00") || charSequence.toString().startsWith("+")) && charSequence.length() <= 8 && charSequence.length() >= 2) {
                    final EZSearchNumberActivity eZSearchNumberActivity = this.f4638b;
                    final String charSequence2 = charSequence.toString();
                    final String G = C1216t0.m9605G(this.f4638b.getApplicationContext());
                    final String country_code = C1184j.m9826d(this.f4638b.getApplicationContext()).getCountry_code();
                    final String A = C1216t0.m9611A(this.f4638b.getApplicationContext(), charSequence.toString());
                    new AsyncTask<Object, Void, Object>(eZSearchNumberActivity, charSequence2, "android", G, country_code, A) { // from class: com.callerid.block.mvc.controller.EZSearchNumberActivity$s

                        /* renamed from: a */
                        String f4677a;

                        /* renamed from: b */
                        String f4678b;

                        /* renamed from: c */
                        String f4679c;

                        /* renamed from: d */
                        String f4680d;

                        /* renamed from: e */
                        String f4681e;

                        /* renamed from: f */
                        String f4682f;

                        /* renamed from: g */
                        WeakReference<EZSearchNumberActivity> f4683g;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f4677a = charSequence2;
                            this.f4678b = r8;
                            this.f4680d = G;
                            this.f4681e = country_code;
                            this.f4682f = A;
                            this.f4683g = new WeakReference<>(eZSearchNumberActivity);
                        }

                        @Override // android.os.AsyncTask
                        protected Object doInBackground(Object[] objArr) {
                            EZSearchNumberActivity eZSearchNumberActivity2 = this.f4683g.get();
                            this.f4679c = C1216t0.m9607E(EZCallApplication.m10163c());
                            if (eZSearchNumberActivity2 == null) {
                                return null;
                            }
                            C1227w.m9527a("searchCC", "所有参数：number:" + this.f4677a + "\ndevice:" + this.f4678b + "\nuid:" + this.f4679c + "\nversion:" + this.f4680d + "\ndefault_cc:" + this.f4681e + "\nstamp:" + this.f4682f + "\n");
                            HashMap hashMap = new HashMap();
                            hashMap.put("tel_number", C1209r.m9626c(this.f4677a));
                            hashMap.put("device", this.f4678b);
                            hashMap.put("uid", this.f4679c);
                            hashMap.put("version", this.f4680d);
                            hashMap.put("default_cc", this.f4681e);
                            hashMap.put("stamp", this.f4682f);
                            String b = C1209r.m9627b(C1215t.m9615b("https://app.ayamote.com/api/v1/gecc.php", hashMap, "utf-8"));
                            StringBuilder sb = new StringBuilder();
                            sb.append("resultJson:");
                            sb.append(b);
                            C1227w.m9527a("searchCC", sb.toString());
                            return b;
                        }

                        @Override // android.os.AsyncTask
                        protected void onPostExecute(Object obj) {
                            super.onPostExecute(obj);
                            EZSearchNumberActivity eZSearchNumberActivity2 = this.f4683g.get();
                            if (eZSearchNumberActivity2 != null) {
                                try {
                                    JSONObject jSONObject = new JSONObject(obj.toString());
                                    if (jSONObject.getString("status").equals("1")) {
                                        EZSearchNumberActivity.V(eZSearchNumberActivity2, jSONObject.getString("cc"));
                                        if (!EZSearchNumberActivity.U(eZSearchNumberActivity2).equals(EZSearchNumberActivity.W(eZSearchNumberActivity2))) {
                                            EZSearchNumberActivity.X(eZSearchNumberActivity2, EZSearchNumberActivity.U(eZSearchNumberActivity2));
                                            C1227w.m9527a("searchCC", "def_cc==" + EZSearchNumberActivity.W(eZSearchNumberActivity2));
                                            EZSearchNumberActivity.V(eZSearchNumberActivity2, "");
                                        }
                                    }
                                } catch (JSONException e) {
                                    e.printStackTrace();
                                }
                            }
                        }
                    }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
