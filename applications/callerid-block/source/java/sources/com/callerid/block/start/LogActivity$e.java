package com.callerid.block.start;

import android.os.Handler;
import android.os.Message;
import android.widget.TextView;
import com.callerid.block.customview.ExpandTextView;
import com.callerid.block.util.C1218u;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/LogActivity$e.class */
class LogActivity$e extends Handler {

    /* renamed from: a */
    WeakReference<LogActivity> f4931a;

    LogActivity$e(LogActivity logActivity) {
        this.f4931a = new WeakReference<>(logActivity);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        String str;
        TextView textView;
        Thread thread;
        StringBuilder sb;
        super.handleMessage(message);
        final LogActivity logActivity = this.f4931a.get();
        if (logActivity != null) {
            int i = message.what;
            if (i != 0) {
                if (i == 1) {
                    String obj = message.obj.toString();
                    TextView O = LogActivity.O(logActivity);
                    O.setText("1.获取服务端的时间：\n" + C1218u.m9549b(obj));
                    LogActivity.c0(logActivity).setText("测试结果：OK\n\n");
                    logActivity.getClass();
                    thread = new Thread() { // from class: com.callerid.block.start.LogActivity$f
                        @Override // java.lang.Thread, java.lang.Runnable
                        public void run() {
                            super.run();
                            try {
                                String e0 = LogActivity.e0(logActivity);
                                Message message2 = new Message();
                                if (e0 != null) {
                                    JSONObject jSONObject = new JSONObject(e0.toString());
                                    message2.obj = e0;
                                    if (jSONObject.getInt("status") != 1 && jSONObject.getInt("status") != -10) {
                                        LogActivity.Y(logActivity);
                                        message2.what = 210;
                                    }
                                    message2.what = 211;
                                    LogActivity.W(logActivity);
                                } else {
                                    LogActivity.Y(logActivity);
                                    message2.what = 20;
                                }
                                LogActivity.d0(logActivity).sendMessage(message2);
                                Thread.sleep(1000L);
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            } catch (JSONException e2) {
                                e2.printStackTrace();
                            }
                        }
                    };
                } else if (i == 20) {
                    LogActivity.i0(logActivity).setText("请求失败");
                    logActivity.getClass();
                    thread = new Thread() { // from class: com.callerid.block.start.LogActivity$g
                        @Override // java.lang.Thread, java.lang.Runnable
                        public void run() {
                            super.run();
                            try {
                                String f0 = LogActivity.f0(logActivity);
                                Message message2 = new Message();
                                if (f0 != null) {
                                    JSONObject jSONObject = new JSONObject(f0.toString());
                                    message2.obj = f0;
                                    if (jSONObject.getInt("status") == 1) {
                                        message2.what = 311;
                                        LogActivity.W(logActivity);
                                    } else {
                                        message2.what = 310;
                                        LogActivity.Y(logActivity);
                                    }
                                } else {
                                    LogActivity.Y(logActivity);
                                    message2.what = 30;
                                }
                                LogActivity.d0(logActivity).sendMessage(message2);
                                Thread.sleep(1000L);
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            } catch (JSONException e2) {
                                e2.printStackTrace();
                            }
                        }
                    };
                } else if (i == 30) {
                    LogActivity.j0(logActivity).setVisibility(0);
                    LogActivity.k0(logActivity).setText("请求失败\n\n");
                    logActivity.getClass();
                    thread = new Thread() { // from class: com.callerid.block.start.LogActivity$d
                        @Override // java.lang.Thread, java.lang.Runnable
                        public void run() {
                            super.run();
                            try {
                                String o0 = logActivity.o0();
                                Message message2 = new Message();
                                if (o0 != null) {
                                    JSONObject jSONObject = new JSONObject(o0.toString());
                                    message2.obj = o0;
                                    if (jSONObject.getInt("status") == 1) {
                                        LogActivity.W(logActivity);
                                        message2.what = 411;
                                    } else {
                                        LogActivity.Y(logActivity);
                                        message2.what = 410;
                                    }
                                } else {
                                    LogActivity.Y(logActivity);
                                    message2.what = 40;
                                }
                                LogActivity.d0(logActivity).sendMessage(message2);
                                Thread.sleep(1000L);
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            } catch (JSONException e2) {
                                e2.printStackTrace();
                            }
                        }
                    };
                } else if (i == 40) {
                    LogActivity.m0(logActivity).setText("请求失败\n\n");
                    logActivity.getClass();
                    thread = new Thread() { // from class: com.callerid.block.start.LogActivity$h
                        @Override // java.lang.Thread, java.lang.Runnable
                        public void run() {
                            super.run();
                            try {
                                String p0 = logActivity.p0();
                                Message message2 = new Message();
                                if (p0 != null) {
                                    JSONObject jSONObject = new JSONObject(p0.toString());
                                    message2.obj = p0;
                                    if (jSONObject.getInt("status") == 1) {
                                        LogActivity.W(logActivity);
                                        message2.what = 611;
                                    } else {
                                        LogActivity.Y(logActivity);
                                        message2.what = 610;
                                    }
                                } else {
                                    LogActivity.Y(logActivity);
                                    message2.what = 60;
                                }
                                LogActivity.d0(logActivity).sendMessage(message2);
                                Thread.sleep(1000L);
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            } catch (JSONException e2) {
                                e2.printStackTrace();
                            }
                        }
                    };
                } else if (i == 60) {
                    LogActivity.Q(logActivity).setText("请求失败\n\n");
                    logActivity.getClass();
                    thread = new Thread() { // from class: com.callerid.block.start.LogActivity$i
                        @Override // java.lang.Thread, java.lang.Runnable
                        public void run() {
                            super.run();
                            try {
                                String r0 = logActivity.r0();
                                Message message2 = new Message();
                                if (r0 != null) {
                                    JSONObject jSONObject = new JSONObject(r0.toString());
                                    message2.obj = r0;
                                    if (jSONObject.getInt("status") == 1) {
                                        LogActivity.W(logActivity);
                                        message2.what = 711;
                                    } else {
                                        LogActivity.Y(logActivity);
                                        message2.what = 710;
                                    }
                                } else {
                                    LogActivity.Y(logActivity);
                                    message2.what = 70;
                                }
                                LogActivity.d0(logActivity).sendMessage(message2);
                                Thread.sleep(1000L);
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            } catch (JSONException e2) {
                                e2.printStackTrace();
                            }
                        }
                    };
                } else if (i != 70) {
                    if (i == 100) {
                        LogActivity.U(logActivity).setText("7.日志收集接口请求失败\n\n");
                        textView = LogActivity.Z(logActivity);
                        sb = new StringBuilder();
                    } else if (i == 210) {
                        String obj2 = message.obj.toString();
                        LogActivity.h0(logActivity).setVisibility(0);
                        ExpandTextView h0 = LogActivity.h0(logActivity);
                        h0.setContent("2.批量查询的结果：\n" + C1218u.m9549b(obj2));
                        LogActivity.i0(logActivity).setText("测试结果：Failed\n\n");
                        logActivity.getClass();
                        thread = new Thread() { // from class: com.callerid.block.start.LogActivity$g
                            @Override // java.lang.Thread, java.lang.Runnable
                            public void run() {
                                super.run();
                                try {
                                    String f0 = LogActivity.f0(logActivity);
                                    Message message2 = new Message();
                                    if (f0 != null) {
                                        JSONObject jSONObject = new JSONObject(f0.toString());
                                        message2.obj = f0;
                                        if (jSONObject.getInt("status") == 1) {
                                            message2.what = 311;
                                            LogActivity.W(logActivity);
                                        } else {
                                            message2.what = 310;
                                            LogActivity.Y(logActivity);
                                        }
                                    } else {
                                        LogActivity.Y(logActivity);
                                        message2.what = 30;
                                    }
                                    LogActivity.d0(logActivity).sendMessage(message2);
                                    Thread.sleep(1000L);
                                } catch (InterruptedException e) {
                                    e.printStackTrace();
                                } catch (JSONException e2) {
                                    e2.printStackTrace();
                                }
                            }
                        };
                    } else if (i == 211) {
                        String obj3 = message.obj.toString();
                        LogActivity.h0(logActivity).setVisibility(0);
                        ExpandTextView h02 = LogActivity.h0(logActivity);
                        h02.setContent("2.批量查询的结果：\n" + C1218u.m9549b(obj3));
                        LogActivity.i0(logActivity).setText("测试结果：OK\n\n");
                        logActivity.getClass();
                        thread = new Thread() { // from class: com.callerid.block.start.LogActivity$g
                            @Override // java.lang.Thread, java.lang.Runnable
                            public void run() {
                                super.run();
                                try {
                                    String f0 = LogActivity.f0(logActivity);
                                    Message message2 = new Message();
                                    if (f0 != null) {
                                        JSONObject jSONObject = new JSONObject(f0.toString());
                                        message2.obj = f0;
                                        if (jSONObject.getInt("status") == 1) {
                                            message2.what = 311;
                                            LogActivity.W(logActivity);
                                        } else {
                                            message2.what = 310;
                                            LogActivity.Y(logActivity);
                                        }
                                    } else {
                                        LogActivity.Y(logActivity);
                                        message2.what = 30;
                                    }
                                    LogActivity.d0(logActivity).sendMessage(message2);
                                    Thread.sleep(1000L);
                                } catch (InterruptedException e) {
                                    e.printStackTrace();
                                } catch (JSONException e2) {
                                    e2.printStackTrace();
                                }
                            }
                        };
                    } else if (i == 310) {
                        String obj4 = message.obj.toString();
                        LogActivity.j0(logActivity).setVisibility(0);
                        ExpandTextView j0 = LogActivity.j0(logActivity);
                        j0.setContent("3.号码查询的结果：\n" + C1218u.m9549b(obj4));
                        LogActivity.k0(logActivity).setText("测试结果：Failed\n\n");
                        logActivity.getClass();
                        thread = new Thread() { // from class: com.callerid.block.start.LogActivity$d
                            @Override // java.lang.Thread, java.lang.Runnable
                            public void run() {
                                super.run();
                                try {
                                    String o0 = logActivity.o0();
                                    Message message2 = new Message();
                                    if (o0 != null) {
                                        JSONObject jSONObject = new JSONObject(o0.toString());
                                        message2.obj = o0;
                                        if (jSONObject.getInt("status") == 1) {
                                            LogActivity.W(logActivity);
                                            message2.what = 411;
                                        } else {
                                            LogActivity.Y(logActivity);
                                            message2.what = 410;
                                        }
                                    } else {
                                        LogActivity.Y(logActivity);
                                        message2.what = 40;
                                    }
                                    LogActivity.d0(logActivity).sendMessage(message2);
                                    Thread.sleep(1000L);
                                } catch (InterruptedException e) {
                                    e.printStackTrace();
                                } catch (JSONException e2) {
                                    e2.printStackTrace();
                                }
                            }
                        };
                    } else if (i == 311) {
                        String obj5 = message.obj.toString();
                        LogActivity.j0(logActivity).setVisibility(0);
                        ExpandTextView j02 = LogActivity.j0(logActivity);
                        j02.setContent("3.号码查询的结果：\n" + C1218u.m9549b(obj5));
                        LogActivity.k0(logActivity).setText("测试结果：OK\n\n");
                        logActivity.getClass();
                        thread = new Thread() { // from class: com.callerid.block.start.LogActivity$d
                            @Override // java.lang.Thread, java.lang.Runnable
                            public void run() {
                                super.run();
                                try {
                                    String o0 = logActivity.o0();
                                    Message message2 = new Message();
                                    if (o0 != null) {
                                        JSONObject jSONObject = new JSONObject(o0.toString());
                                        message2.obj = o0;
                                        if (jSONObject.getInt("status") == 1) {
                                            LogActivity.W(logActivity);
                                            message2.what = 411;
                                        } else {
                                            LogActivity.Y(logActivity);
                                            message2.what = 410;
                                        }
                                    } else {
                                        LogActivity.Y(logActivity);
                                        message2.what = 40;
                                    }
                                    LogActivity.d0(logActivity).sendMessage(message2);
                                    Thread.sleep(1000L);
                                } catch (InterruptedException e) {
                                    e.printStackTrace();
                                } catch (JSONException e2) {
                                    e2.printStackTrace();
                                }
                            }
                        };
                    } else if (i == 410) {
                        String obj6 = message.obj.toString();
                        LogActivity.l0(logActivity).setVisibility(0);
                        TextView l0 = LogActivity.l0(logActivity);
                        l0.setText("4.获取CC请求：\n" + C1218u.m9549b(obj6));
                        LogActivity.m0(logActivity).setText("测试结果：Failed\n\n");
                        logActivity.getClass();
                        thread = new Thread() { // from class: com.callerid.block.start.LogActivity$h
                            @Override // java.lang.Thread, java.lang.Runnable
                            public void run() {
                                super.run();
                                try {
                                    String p0 = logActivity.p0();
                                    Message message2 = new Message();
                                    if (p0 != null) {
                                        JSONObject jSONObject = new JSONObject(p0.toString());
                                        message2.obj = p0;
                                        if (jSONObject.getInt("status") == 1) {
                                            LogActivity.W(logActivity);
                                            message2.what = 611;
                                        } else {
                                            LogActivity.Y(logActivity);
                                            message2.what = 610;
                                        }
                                    } else {
                                        LogActivity.Y(logActivity);
                                        message2.what = 60;
                                    }
                                    LogActivity.d0(logActivity).sendMessage(message2);
                                    Thread.sleep(1000L);
                                } catch (InterruptedException e) {
                                    e.printStackTrace();
                                } catch (JSONException e2) {
                                    e2.printStackTrace();
                                }
                            }
                        };
                    } else if (i == 411) {
                        String obj7 = message.obj.toString();
                        TextView l02 = LogActivity.l0(logActivity);
                        l02.setText("4.获取CC请求：\n" + C1218u.m9549b(obj7));
                        LogActivity.m0(logActivity).setText("测试结果：OK\n\n");
                        logActivity.getClass();
                        thread = new Thread() { // from class: com.callerid.block.start.LogActivity$h
                            @Override // java.lang.Thread, java.lang.Runnable
                            public void run() {
                                super.run();
                                try {
                                    String p0 = logActivity.p0();
                                    Message message2 = new Message();
                                    if (p0 != null) {
                                        JSONObject jSONObject = new JSONObject(p0.toString());
                                        message2.obj = p0;
                                        if (jSONObject.getInt("status") == 1) {
                                            LogActivity.W(logActivity);
                                            message2.what = 611;
                                        } else {
                                            LogActivity.Y(logActivity);
                                            message2.what = 610;
                                        }
                                    } else {
                                        LogActivity.Y(logActivity);
                                        message2.what = 60;
                                    }
                                    LogActivity.d0(logActivity).sendMessage(message2);
                                    Thread.sleep(1000L);
                                } catch (InterruptedException e) {
                                    e.printStackTrace();
                                } catch (JSONException e2) {
                                    e2.printStackTrace();
                                }
                            }
                        };
                    } else if (i == 610) {
                        String obj8 = message.obj.toString();
                        TextView n0 = LogActivity.n0(logActivity);
                        n0.setText("5.检查离线数据是否更新：\n" + C1218u.m9549b(obj8));
                        LogActivity.Q(logActivity).setText("测试结果：Failed\n\n");
                        logActivity.getClass();
                        thread = new Thread() { // from class: com.callerid.block.start.LogActivity$i
                            @Override // java.lang.Thread, java.lang.Runnable
                            public void run() {
                                super.run();
                                try {
                                    String r0 = logActivity.r0();
                                    Message message2 = new Message();
                                    if (r0 != null) {
                                        JSONObject jSONObject = new JSONObject(r0.toString());
                                        message2.obj = r0;
                                        if (jSONObject.getInt("status") == 1) {
                                            LogActivity.W(logActivity);
                                            message2.what = 711;
                                        } else {
                                            LogActivity.Y(logActivity);
                                            message2.what = 710;
                                        }
                                    } else {
                                        LogActivity.Y(logActivity);
                                        message2.what = 70;
                                    }
                                    LogActivity.d0(logActivity).sendMessage(message2);
                                    Thread.sleep(1000L);
                                } catch (InterruptedException e) {
                                    e.printStackTrace();
                                } catch (JSONException e2) {
                                    e2.printStackTrace();
                                }
                            }
                        };
                    } else if (i == 611) {
                        String obj9 = message.obj.toString();
                        TextView n02 = LogActivity.n0(logActivity);
                        n02.setText("5.检查离线数据是否更新：\n" + C1218u.m9549b(obj9));
                        LogActivity.Q(logActivity).setText("测试结果：OK\n\n");
                        logActivity.getClass();
                        thread = new Thread() { // from class: com.callerid.block.start.LogActivity$i
                            @Override // java.lang.Thread, java.lang.Runnable
                            public void run() {
                                super.run();
                                try {
                                    String r0 = logActivity.r0();
                                    Message message2 = new Message();
                                    if (r0 != null) {
                                        JSONObject jSONObject = new JSONObject(r0.toString());
                                        message2.obj = r0;
                                        if (jSONObject.getInt("status") == 1) {
                                            LogActivity.W(logActivity);
                                            message2.what = 711;
                                        } else {
                                            LogActivity.Y(logActivity);
                                            message2.what = 710;
                                        }
                                    } else {
                                        LogActivity.Y(logActivity);
                                        message2.what = 70;
                                    }
                                    LogActivity.d0(logActivity).sendMessage(message2);
                                    Thread.sleep(1000L);
                                } catch (InterruptedException e) {
                                    e.printStackTrace();
                                } catch (JSONException e2) {
                                    e2.printStackTrace();
                                }
                            }
                        };
                    } else if (i == 710) {
                        String obj10 = message.obj.toString();
                        LogActivity.R(logActivity).setVisibility(0);
                        ExpandTextView R = LogActivity.R(logActivity);
                        R.setContent("6.首次获取离线spam数据：\n" + C1218u.m9549b(obj10));
                        LogActivity.S(logActivity).setText("首次获取离线spam数据测试结果：Failed\n\n");
                        logActivity.getClass();
                        thread = new Thread() { // from class: com.callerid.block.start.LogActivity$j
                            @Override // java.lang.Thread, java.lang.Runnable
                            public void run() {
                                super.run();
                                try {
                                    String g0 = LogActivity.g0(logActivity);
                                    Message message2 = new Message();
                                    if (g0 != null) {
                                        JSONObject jSONObject = new JSONObject(g0.toString());
                                        message2.obj = g0;
                                        if (jSONObject.getInt("status") != 1 && jSONObject.getInt("status") != -30) {
                                            LogActivity.Y(logActivity);
                                            message2.what = 1010;
                                        }
                                        LogActivity.W(logActivity);
                                        message2.what = 1011;
                                    } else {
                                        LogActivity.Y(logActivity);
                                        message2.what = 100;
                                    }
                                    LogActivity.d0(logActivity).sendMessage(message2);
                                    Thread.sleep(1000L);
                                } catch (InterruptedException e) {
                                    e.printStackTrace();
                                } catch (JSONException e2) {
                                    e2.printStackTrace();
                                }
                            }
                        };
                    } else if (i == 711) {
                        String obj11 = message.obj.toString();
                        LogActivity.R(logActivity).setVisibility(0);
                        ExpandTextView R2 = LogActivity.R(logActivity);
                        R2.setContent("6.首次获取离线spam数据：\n" + C1218u.m9549b(obj11));
                        LogActivity.S(logActivity).setText("首次获取离线spam数据测试结果：OK\n\n");
                        logActivity.getClass();
                        thread = new Thread() { // from class: com.callerid.block.start.LogActivity$j
                            @Override // java.lang.Thread, java.lang.Runnable
                            public void run() {
                                super.run();
                                try {
                                    String g0 = LogActivity.g0(logActivity);
                                    Message message2 = new Message();
                                    if (g0 != null) {
                                        JSONObject jSONObject = new JSONObject(g0.toString());
                                        message2.obj = g0;
                                        if (jSONObject.getInt("status") != 1 && jSONObject.getInt("status") != -30) {
                                            LogActivity.Y(logActivity);
                                            message2.what = 1010;
                                        }
                                        LogActivity.W(logActivity);
                                        message2.what = 1011;
                                    } else {
                                        LogActivity.Y(logActivity);
                                        message2.what = 100;
                                    }
                                    LogActivity.d0(logActivity).sendMessage(message2);
                                    Thread.sleep(1000L);
                                } catch (InterruptedException e) {
                                    e.printStackTrace();
                                } catch (JSONException e2) {
                                    e2.printStackTrace();
                                }
                            }
                        };
                    } else if (i == 1010) {
                        String obj12 = message.obj.toString();
                        TextView T = LogActivity.T(logActivity);
                        T.setText("7.日志收集接口：\n" + C1218u.m9549b(obj12));
                        LogActivity.U(logActivity).setText("日志收集接口结果：Failed\n\n");
                        textView = LogActivity.Z(logActivity);
                        sb = new StringBuilder();
                    } else if (i != 1011) {
                        return;
                    } else {
                        String obj13 = message.obj.toString();
                        TextView T2 = LogActivity.T(logActivity);
                        T2.setText("7.日志收集接口：\n" + C1218u.m9549b(obj13));
                        LogActivity.U(logActivity).setText("日志收集接口结果：OK\n\n");
                        textView = LogActivity.Z(logActivity);
                        sb = new StringBuilder();
                    }
                    sb.append("成功个数：");
                    sb.append(LogActivity.V(logActivity));
                    sb.append("\n");
                    sb.append("失败个数：");
                    sb.append(LogActivity.X(logActivity));
                    str = sb.toString();
                } else {
                    LogActivity.S(logActivity).setText("请求失败\n\n");
                    logActivity.getClass();
                    thread = new Thread() { // from class: com.callerid.block.start.LogActivity$j
                        @Override // java.lang.Thread, java.lang.Runnable
                        public void run() {
                            super.run();
                            try {
                                String g0 = LogActivity.g0(logActivity);
                                Message message2 = new Message();
                                if (g0 != null) {
                                    JSONObject jSONObject = new JSONObject(g0.toString());
                                    message2.obj = g0;
                                    if (jSONObject.getInt("status") != 1 && jSONObject.getInt("status") != -30) {
                                        LogActivity.Y(logActivity);
                                        message2.what = 1010;
                                    }
                                    LogActivity.W(logActivity);
                                    message2.what = 1011;
                                } else {
                                    LogActivity.Y(logActivity);
                                    message2.what = 100;
                                }
                                LogActivity.d0(logActivity).sendMessage(message2);
                                Thread.sleep(1000L);
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            } catch (JSONException e2) {
                                e2.printStackTrace();
                            }
                        }
                    };
                }
                thread.start();
                return;
            }
            LogActivity.O(logActivity).setVisibility(8);
            textView = LogActivity.c0(logActivity);
            str = "获取服务端的时间：返回值为空，请查看网络等原因";
            textView.setText(str);
        }
    }
}
