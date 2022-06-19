package p193e.p194a.p1238t2.p1239a.p1248e.p1249a;

import com.google.protobuf.ExtensionRegistryLite;
import com.truecaller.api.services.messenger.p138v1.AddParticipants;
import com.truecaller.api.services.messenger.p138v1.CreateGroup;
import com.truecaller.api.services.messenger.p138v1.DeleteMessages;
import com.truecaller.api.services.messenger.p138v1.EditMessage;
import com.truecaller.api.services.messenger.p138v1.GetChangelog;
import com.truecaller.api.services.messenger.p138v1.GetContexts;
import com.truecaller.api.services.messenger.p138v1.GetEvents;
import com.truecaller.api.services.messenger.p138v1.GetGroupInfoViaInviteKey;
import com.truecaller.api.services.messenger.p138v1.GetParticipants;
import com.truecaller.api.services.messenger.p138v1.GetPermissions;
import com.truecaller.api.services.messenger.p138v1.GetUsers;
import com.truecaller.api.services.messenger.p138v1.JoinViaInviteKey;
import com.truecaller.api.services.messenger.p138v1.MediaHandles;
import com.truecaller.api.services.messenger.p138v1.RegisterUser;
import com.truecaller.api.services.messenger.p138v1.ReissueGroupInviteKey;
import com.truecaller.api.services.messenger.p138v1.RemoveParticipants;
import com.truecaller.api.services.messenger.p138v1.SendMessage;
import com.truecaller.api.services.messenger.p138v1.SendReaction;
import com.truecaller.api.services.messenger.p138v1.SendReport;
import com.truecaller.api.services.messenger.p138v1.SendUserTyping;
import com.truecaller.api.services.messenger.p138v1.UpdateContextSettings;
import com.truecaller.api.services.messenger.p138v1.UpdateGroupInfo;
import com.truecaller.api.services.messenger.p138v1.UpdateNotificationSettings;
import com.truecaller.api.services.messenger.p138v1.UpdateRoles;
import com.truecaller.api.services.messenger.p138v1.events.Event;
import p3.a.c;
import p3.a.d;
import p3.a.p0;
import p3.a.p1.a.b;
import p3.a.q1.a;
import p3.a.q1.b;
import p3.a.q1.e;
/* renamed from: e.a.t2.a.e.a.b */
/* loaded from: classes5-dex2jar.jar:e/a/t2/a/e/a/b.class */
public final class C20458b {

    /* renamed from: a */
    public static volatile p0<RegisterUser.Request, RegisterUser.Response> f57520a;

    /* renamed from: b */
    public static volatile p0<GetUsers.Request, GetUsers.Response> f57521b;

    /* renamed from: c */
    public static volatile p0<Event.Ack, Event> f57522c;

    /* renamed from: d */
    public static volatile p0<SendMessage.Request, SendMessage.Response> f57523d;

    /* renamed from: e */
    public static volatile p0<SendUserTyping.Request, SendUserTyping.Response> f57524e;

    /* renamed from: f */
    public static volatile p0<SendReport.Request, SendReport.Response> f57525f;

    /* renamed from: g */
    public static volatile p0<MediaHandles.Request, MediaHandles.Response> f57526g;

    /* renamed from: h */
    public static volatile p0<UpdateNotificationSettings.Request, UpdateNotificationSettings.Response> f57527h;

    /* renamed from: i */
    public static volatile p0<SendReaction.Request, SendReaction.Response> f57528i;

    /* renamed from: j */
    public static volatile p0<GetChangelog.Request, GetChangelog.Response> f57529j;

    /* renamed from: k */
    public static volatile p0<CreateGroup.Request, CreateGroup.Response> f57530k;

    /* renamed from: l */
    public static volatile p0<UpdateGroupInfo.Request, UpdateGroupInfo.Response> f57531l;

    /* renamed from: m */
    public static volatile p0<AddParticipants.Request, AddParticipants.Response> f57532m;

    /* renamed from: n */
    public static volatile p0<GetParticipants.Request, GetParticipants.Response> f57533n;

    /* renamed from: o */
    public static volatile p0<RemoveParticipants.Request, RemoveParticipants.Response> f57534o;

    /* renamed from: p */
    public static volatile p0<GetPermissions.Request, GetPermissions.Response> f57535p;

    /* renamed from: q */
    public static volatile p0<UpdateRoles.Request, UpdateRoles.Response> f57536q;

    /* renamed from: r */
    public static volatile p0<GetEvents.Request, GetEvents.Response> f57537r;

    /* renamed from: s */
    public static volatile p0<GetContexts.Request, GetContexts.Response> f57538s;

    /* renamed from: t */
    public static volatile p0<UpdateContextSettings.Request, UpdateContextSettings.Response> f57539t;

    /* renamed from: u */
    public static volatile p0<JoinViaInviteKey.Request, JoinViaInviteKey.Response> f57540u;

    /* renamed from: v */
    public static volatile p0<GetGroupInfoViaInviteKey.Request, GetGroupInfoViaInviteKey.Response> f57541v;

    /* renamed from: w */
    public static volatile p0<ReissueGroupInviteKey.Request, ReissueGroupInviteKey.Response> f57542w;

    /* renamed from: x */
    public static volatile p0<EditMessage.Request, EditMessage.Response> f57543x;

    /* renamed from: y */
    public static volatile p0<DeleteMessages.Request, DeleteMessages.Response> f57544y;

    /* renamed from: e.a.t2.a.e.a.b$a */
    /* loaded from: classes5-dex2jar.jar:e/a/t2/a/e/a/b$a.class */
    public static final class C20459a extends b<C20459a> {
        public C20459a(d dVar, c cVar) {
            super(dVar, cVar);
        }

        public C20459a(d dVar, c cVar, C20457a c20457a) {
            super(dVar, cVar);
        }

        /* renamed from: a */
        public p3.a.q1.c m11123a(d dVar, c cVar) {
            return new C20459a(dVar, cVar);
        }

        /* renamed from: c */
        public AddParticipants.Response m11122c(AddParticipants.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<AddParticipants.Request, AddParticipants.Response> p0Var = C20458b.f57532m;
            p0<AddParticipants.Request, AddParticipants.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20458b.class) {
                    try {
                        p0<AddParticipants.Request, AddParticipants.Response> p0Var3 = C20458b.f57532m;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.messenger.v1.Messenger", "AddParticipants");
                            b.e = true;
                            AddParticipants.Request defaultInstance = AddParticipants.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(AddParticipants.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20458b.f57532m = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (AddParticipants.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: d */
        public CreateGroup.Response m11121d(CreateGroup.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<CreateGroup.Request, CreateGroup.Response> p0Var = C20458b.f57530k;
            p0<CreateGroup.Request, CreateGroup.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20458b.class) {
                    try {
                        p0<CreateGroup.Request, CreateGroup.Response> p0Var3 = C20458b.f57530k;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.messenger.v1.Messenger", "CreateGroup");
                            b.e = true;
                            CreateGroup.Request defaultInstance = CreateGroup.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(CreateGroup.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20458b.f57530k = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (CreateGroup.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: e */
        public DeleteMessages.Response m11120e(DeleteMessages.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<DeleteMessages.Request, DeleteMessages.Response> p0Var = C20458b.f57544y;
            p0<DeleteMessages.Request, DeleteMessages.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20458b.class) {
                    try {
                        p0<DeleteMessages.Request, DeleteMessages.Response> p0Var3 = C20458b.f57544y;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.messenger.v1.Messenger", "DeleteMessages");
                            b.e = true;
                            DeleteMessages.Request defaultInstance = DeleteMessages.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(DeleteMessages.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20458b.f57544y = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (DeleteMessages.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: f */
        public GetChangelog.Response m11119f(GetChangelog.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<GetChangelog.Request, GetChangelog.Response> p0Var = C20458b.f57529j;
            p0<GetChangelog.Request, GetChangelog.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20458b.class) {
                    try {
                        p0<GetChangelog.Request, GetChangelog.Response> p0Var3 = C20458b.f57529j;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.messenger.v1.Messenger", "GetChangelog");
                            b.e = true;
                            GetChangelog.Request defaultInstance = GetChangelog.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(GetChangelog.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20458b.f57529j = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (GetChangelog.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: g */
        public GetContexts.Response m11118g(GetContexts.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<GetContexts.Request, GetContexts.Response> p0Var = C20458b.f57538s;
            p0<GetContexts.Request, GetContexts.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20458b.class) {
                    try {
                        p0<GetContexts.Request, GetContexts.Response> p0Var3 = C20458b.f57538s;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.messenger.v1.Messenger", "GetContexts");
                            b.e = true;
                            GetContexts.Request defaultInstance = GetContexts.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(GetContexts.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20458b.f57538s = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (GetContexts.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: h */
        public GetEvents.Response m11117h(GetEvents.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<GetEvents.Request, GetEvents.Response> p0Var = C20458b.f57537r;
            p0<GetEvents.Request, GetEvents.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20458b.class) {
                    try {
                        p0<GetEvents.Request, GetEvents.Response> p0Var3 = C20458b.f57537r;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.messenger.v1.Messenger", "GetEvents");
                            b.e = true;
                            GetEvents.Request defaultInstance = GetEvents.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(GetEvents.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20458b.f57537r = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (GetEvents.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: i */
        public GetGroupInfoViaInviteKey.Response m11116i(GetGroupInfoViaInviteKey.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<GetGroupInfoViaInviteKey.Request, GetGroupInfoViaInviteKey.Response> p0Var = C20458b.f57541v;
            p0<GetGroupInfoViaInviteKey.Request, GetGroupInfoViaInviteKey.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20458b.class) {
                    try {
                        p0<GetGroupInfoViaInviteKey.Request, GetGroupInfoViaInviteKey.Response> p0Var3 = C20458b.f57541v;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.messenger.v1.Messenger", "GetGroupInfoViaInviteKey");
                            b.e = true;
                            GetGroupInfoViaInviteKey.Request defaultInstance = GetGroupInfoViaInviteKey.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(GetGroupInfoViaInviteKey.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20458b.f57541v = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (GetGroupInfoViaInviteKey.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: j */
        public MediaHandles.Response m11115j(MediaHandles.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<MediaHandles.Request, MediaHandles.Response> p0Var = C20458b.f57526g;
            p0<MediaHandles.Request, MediaHandles.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20458b.class) {
                    try {
                        p0<MediaHandles.Request, MediaHandles.Response> p0Var3 = C20458b.f57526g;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.messenger.v1.Messenger", "GetMediaHandles");
                            b.e = true;
                            MediaHandles.Request defaultInstance = MediaHandles.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(MediaHandles.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20458b.f57526g = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (MediaHandles.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: k */
        public GetParticipants.Response m11114k(GetParticipants.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<GetParticipants.Request, GetParticipants.Response> p0Var = C20458b.f57533n;
            p0<GetParticipants.Request, GetParticipants.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20458b.class) {
                    try {
                        p0<GetParticipants.Request, GetParticipants.Response> p0Var3 = C20458b.f57533n;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.messenger.v1.Messenger", "GetParticipants");
                            b.e = true;
                            GetParticipants.Request defaultInstance = GetParticipants.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(GetParticipants.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20458b.f57533n = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (GetParticipants.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: l */
        public GetPermissions.Response m11113l(GetPermissions.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<GetPermissions.Request, GetPermissions.Response> p0Var = C20458b.f57535p;
            p0<GetPermissions.Request, GetPermissions.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20458b.class) {
                    try {
                        p0<GetPermissions.Request, GetPermissions.Response> p0Var3 = C20458b.f57535p;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.messenger.v1.Messenger", "GetPermissions");
                            b.e = true;
                            GetPermissions.Request defaultInstance = GetPermissions.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(GetPermissions.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20458b.f57535p = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (GetPermissions.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: m */
        public GetUsers.Response m11112m(GetUsers.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<GetUsers.Request, GetUsers.Response> p0Var = C20458b.f57521b;
            p0<GetUsers.Request, GetUsers.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20458b.class) {
                    try {
                        p0<GetUsers.Request, GetUsers.Response> p0Var3 = C20458b.f57521b;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.messenger.v1.Messenger", "GetUsers");
                            b.e = true;
                            GetUsers.Request defaultInstance = GetUsers.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(GetUsers.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20458b.f57521b = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (GetUsers.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: n */
        public JoinViaInviteKey.Response m11111n(JoinViaInviteKey.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<JoinViaInviteKey.Request, JoinViaInviteKey.Response> p0Var = C20458b.f57540u;
            p0<JoinViaInviteKey.Request, JoinViaInviteKey.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20458b.class) {
                    try {
                        p0<JoinViaInviteKey.Request, JoinViaInviteKey.Response> p0Var3 = C20458b.f57540u;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.messenger.v1.Messenger", "JoinViaInviteKey");
                            b.e = true;
                            JoinViaInviteKey.Request defaultInstance = JoinViaInviteKey.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(JoinViaInviteKey.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20458b.f57540u = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (JoinViaInviteKey.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: o */
        public RegisterUser.Response m11110o(RegisterUser.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<RegisterUser.Request, RegisterUser.Response> p0Var = C20458b.f57520a;
            p0<RegisterUser.Request, RegisterUser.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20458b.class) {
                    try {
                        p0<RegisterUser.Request, RegisterUser.Response> p0Var3 = C20458b.f57520a;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.messenger.v1.Messenger", "Register");
                            b.e = true;
                            RegisterUser.Request defaultInstance = RegisterUser.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(RegisterUser.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20458b.f57520a = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (RegisterUser.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: p */
        public ReissueGroupInviteKey.Response m11109p(ReissueGroupInviteKey.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<ReissueGroupInviteKey.Request, ReissueGroupInviteKey.Response> p0Var = C20458b.f57542w;
            p0<ReissueGroupInviteKey.Request, ReissueGroupInviteKey.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20458b.class) {
                    try {
                        p0<ReissueGroupInviteKey.Request, ReissueGroupInviteKey.Response> p0Var3 = C20458b.f57542w;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.messenger.v1.Messenger", "ReissueGroupInviteKey");
                            b.e = true;
                            ReissueGroupInviteKey.Request defaultInstance = ReissueGroupInviteKey.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(ReissueGroupInviteKey.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20458b.f57542w = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (ReissueGroupInviteKey.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: q */
        public RemoveParticipants.Response m11108q(RemoveParticipants.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<RemoveParticipants.Request, RemoveParticipants.Response> p0Var = C20458b.f57534o;
            p0<RemoveParticipants.Request, RemoveParticipants.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20458b.class) {
                    try {
                        p0<RemoveParticipants.Request, RemoveParticipants.Response> p0Var3 = C20458b.f57534o;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.messenger.v1.Messenger", "RemoveParticipants");
                            b.e = true;
                            RemoveParticipants.Request defaultInstance = RemoveParticipants.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(RemoveParticipants.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20458b.f57534o = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (RemoveParticipants.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: r */
        public SendReaction.Response m11107r(SendReaction.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<SendReaction.Request, SendReaction.Response> p0Var = C20458b.f57528i;
            p0<SendReaction.Request, SendReaction.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20458b.class) {
                    try {
                        p0<SendReaction.Request, SendReaction.Response> p0Var3 = C20458b.f57528i;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.messenger.v1.Messenger", "SendReaction");
                            b.e = true;
                            SendReaction.Request defaultInstance = SendReaction.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(SendReaction.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20458b.f57528i = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (SendReaction.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: s */
        public SendReport.Response m11106s(SendReport.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<SendReport.Request, SendReport.Response> p0Var = C20458b.f57525f;
            p0<SendReport.Request, SendReport.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20458b.class) {
                    try {
                        p0<SendReport.Request, SendReport.Response> p0Var3 = C20458b.f57525f;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.messenger.v1.Messenger", "SendReport");
                            b.e = true;
                            SendReport.Request defaultInstance = SendReport.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(SendReport.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20458b.f57525f = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (SendReport.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: t */
        public SendUserTyping.Response m11105t(SendUserTyping.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<SendUserTyping.Request, SendUserTyping.Response> p0Var = C20458b.f57524e;
            p0<SendUserTyping.Request, SendUserTyping.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20458b.class) {
                    try {
                        p0<SendUserTyping.Request, SendUserTyping.Response> p0Var3 = C20458b.f57524e;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.messenger.v1.Messenger", "SendUserTyping");
                            b.e = true;
                            SendUserTyping.Request defaultInstance = SendUserTyping.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(SendUserTyping.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20458b.f57524e = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (SendUserTyping.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: u */
        public UpdateContextSettings.Response m11104u(UpdateContextSettings.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<UpdateContextSettings.Request, UpdateContextSettings.Response> p0Var = C20458b.f57539t;
            p0<UpdateContextSettings.Request, UpdateContextSettings.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20458b.class) {
                    try {
                        p0<UpdateContextSettings.Request, UpdateContextSettings.Response> p0Var3 = C20458b.f57539t;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.messenger.v1.Messenger", "UpdateContextSettings");
                            b.e = true;
                            UpdateContextSettings.Request defaultInstance = UpdateContextSettings.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(UpdateContextSettings.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20458b.f57539t = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (UpdateContextSettings.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: v */
        public UpdateGroupInfo.Response m11103v(UpdateGroupInfo.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<UpdateGroupInfo.Request, UpdateGroupInfo.Response> p0Var = C20458b.f57531l;
            p0<UpdateGroupInfo.Request, UpdateGroupInfo.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20458b.class) {
                    try {
                        p0<UpdateGroupInfo.Request, UpdateGroupInfo.Response> p0Var3 = C20458b.f57531l;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.messenger.v1.Messenger", "UpdateGroupInfo");
                            b.e = true;
                            UpdateGroupInfo.Request defaultInstance = UpdateGroupInfo.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(UpdateGroupInfo.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20458b.f57531l = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (UpdateGroupInfo.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: w */
        public UpdateNotificationSettings.Response m11102w(UpdateNotificationSettings.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<UpdateNotificationSettings.Request, UpdateNotificationSettings.Response> p0Var = C20458b.f57527h;
            p0<UpdateNotificationSettings.Request, UpdateNotificationSettings.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20458b.class) {
                    try {
                        p0<UpdateNotificationSettings.Request, UpdateNotificationSettings.Response> p0Var3 = C20458b.f57527h;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.messenger.v1.Messenger", "UpdateNotificationSettings");
                            b.e = true;
                            UpdateNotificationSettings.Request defaultInstance = UpdateNotificationSettings.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(UpdateNotificationSettings.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20458b.f57527h = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (UpdateNotificationSettings.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: x */
        public UpdateRoles.Response m11101x(UpdateRoles.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<UpdateRoles.Request, UpdateRoles.Response> p0Var = C20458b.f57536q;
            p0<UpdateRoles.Request, UpdateRoles.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20458b.class) {
                    try {
                        p0<UpdateRoles.Request, UpdateRoles.Response> p0Var3 = C20458b.f57536q;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.messenger.v1.Messenger", "UpdateRoles");
                            b.e = true;
                            UpdateRoles.Request defaultInstance = UpdateRoles.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(UpdateRoles.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20458b.f57536q = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (UpdateRoles.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }
    }

    /* renamed from: e.a.t2.a.e.a.b$b */
    /* loaded from: classes5-dex2jar.jar:e/a/t2/a/e/a/b$b.class */
    public static final class C20460b extends a<C20460b> {
        public C20460b(d dVar, c cVar) {
            super(dVar, cVar);
        }

        public C20460b(d dVar, c cVar, C20457a c20457a) {
            super(dVar, cVar);
        }

        /* renamed from: a */
        public p3.a.q1.c m11100a(d dVar, c cVar) {
            return new C20460b(dVar, cVar);
        }
    }
}
