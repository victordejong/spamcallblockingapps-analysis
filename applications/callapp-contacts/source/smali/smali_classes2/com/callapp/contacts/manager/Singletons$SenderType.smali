.class public final enum Lcom/callapp/contacts/manager/Singletons$SenderType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/Singletons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SenderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/manager/Singletons$SenderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/manager/Singletons$SenderType;

.field public static final enum ALLO:Lcom/callapp/contacts/manager/Singletons$SenderType;

.field public static final enum DUO:Lcom/callapp/contacts/manager/Singletons$SenderType;

.field public static final enum EMAIL:Lcom/callapp/contacts/manager/Singletons$SenderType;

.field public static final enum FACEBOOK:Lcom/callapp/contacts/manager/Singletons$SenderType;

.field public static final enum GOOGLE_PLUS_HANGOUT:Lcom/callapp/contacts/manager/Singletons$SenderType;

.field public static final enum INSTAGRAM:Lcom/callapp/contacts/manager/Singletons$SenderType;

.field public static final enum MESSENGER:Lcom/callapp/contacts/manager/Singletons$SenderType;

.field public static final enum SIGNAL:Lcom/callapp/contacts/manager/Singletons$SenderType;

.field public static final enum SKYPE:Lcom/callapp/contacts/manager/Singletons$SenderType;

.field public static final enum SMS:Lcom/callapp/contacts/manager/Singletons$SenderType;

.field public static final enum TELEGRAM:Lcom/callapp/contacts/manager/Singletons$SenderType;

.field public static final enum TWITTER:Lcom/callapp/contacts/manager/Singletons$SenderType;

.field public static final enum VIBER:Lcom/callapp/contacts/manager/Singletons$SenderType;

.field public static final enum WE_CHAT:Lcom/callapp/contacts/manager/Singletons$SenderType;

.field public static final enum WHATSAPP:Lcom/callapp/contacts/manager/Singletons$SenderType;

.field public static final enum WHATSAPP4B:Lcom/callapp/contacts/manager/Singletons$SenderType;

.field public static final enum YAHOO:Lcom/callapp/contacts/manager/Singletons$SenderType;


# instance fields
.field private final openCount:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

.field private final senderClass:Ljava/lang/Class;

.field private singletonMember:Lcom/callapp/contacts/manager/ManagedLifecycle;


# direct methods
.method static constructor <clinit>()V
    .locals 33

    .line 124
    new-instance v6, Lcom/callapp/contacts/manager/Singletons$SenderType;

    const-class v3, Lcom/callapp/contacts/api/helper/instantmessaging/SmsSenderHelper;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->a()Lcom/callapp/contacts/api/helper/instantmessaging/SmsSenderHelper;

    move-result-object v4

    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->ct:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    const-string v1, "SMS"

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/manager/Singletons$SenderType;-><init>(Ljava/lang/String;ILjava/lang/Class;Lcom/callapp/contacts/manager/ManagedLifecycle;Lcom/callapp/contacts/manager/preferences/prefs/LongPref;)V

    sput-object v6, Lcom/callapp/contacts/manager/Singletons$SenderType;->SMS:Lcom/callapp/contacts/manager/Singletons$SenderType;

    .line 125
    new-instance v0, Lcom/callapp/contacts/manager/Singletons$SenderType;

    const-class v10, Lcom/callapp/contacts/api/helper/instantmessaging/EmailSenderHelper;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->b()Lcom/callapp/contacts/api/helper/instantmessaging/EmailSenderHelper;

    move-result-object v11

    sget-object v12, Lcom/callapp/contacts/manager/preferences/Prefs;->cs:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    const-string v8, "EMAIL"

    const/4 v9, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/callapp/contacts/manager/Singletons$SenderType;-><init>(Ljava/lang/String;ILjava/lang/Class;Lcom/callapp/contacts/manager/ManagedLifecycle;Lcom/callapp/contacts/manager/preferences/prefs/LongPref;)V

    sput-object v0, Lcom/callapp/contacts/manager/Singletons$SenderType;->EMAIL:Lcom/callapp/contacts/manager/Singletons$SenderType;

    .line 126
    new-instance v1, Lcom/callapp/contacts/manager/Singletons$SenderType;

    const-class v16, Lcom/callapp/contacts/api/helper/instantmessaging/WhatsAppSenderHelper;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->c()Lcom/callapp/contacts/api/helper/instantmessaging/WhatsAppSenderHelper;

    move-result-object v17

    sget-object v18, Lcom/callapp/contacts/manager/preferences/Prefs;->cj:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    const-string v14, "WHATSAPP"

    const/4 v15, 0x2

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/callapp/contacts/manager/Singletons$SenderType;-><init>(Ljava/lang/String;ILjava/lang/Class;Lcom/callapp/contacts/manager/ManagedLifecycle;Lcom/callapp/contacts/manager/preferences/prefs/LongPref;)V

    sput-object v1, Lcom/callapp/contacts/manager/Singletons$SenderType;->WHATSAPP:Lcom/callapp/contacts/manager/Singletons$SenderType;

    .line 127
    new-instance v2, Lcom/callapp/contacts/manager/Singletons$SenderType;

    const-class v10, Lcom/callapp/contacts/api/helper/instantmessaging/WhatsApp4BSenderHelper;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->d()Lcom/callapp/contacts/api/helper/instantmessaging/WhatsApp4BSenderHelper;

    move-result-object v11

    sget-object v12, Lcom/callapp/contacts/manager/preferences/Prefs;->ck:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    const-string v8, "WHATSAPP4B"

    const/4 v9, 0x3

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/callapp/contacts/manager/Singletons$SenderType;-><init>(Ljava/lang/String;ILjava/lang/Class;Lcom/callapp/contacts/manager/ManagedLifecycle;Lcom/callapp/contacts/manager/preferences/prefs/LongPref;)V

    sput-object v2, Lcom/callapp/contacts/manager/Singletons$SenderType;->WHATSAPP4B:Lcom/callapp/contacts/manager/Singletons$SenderType;

    .line 128
    new-instance v3, Lcom/callapp/contacts/manager/Singletons$SenderType;

    const-class v16, Lcom/callapp/contacts/api/helper/instantmessaging/TelegramSenderHelper;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->e()Lcom/callapp/contacts/api/helper/instantmessaging/TelegramSenderHelper;

    move-result-object v17

    sget-object v18, Lcom/callapp/contacts/manager/preferences/Prefs;->cl:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    const-string v14, "TELEGRAM"

    const/4 v15, 0x4

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/callapp/contacts/manager/Singletons$SenderType;-><init>(Ljava/lang/String;ILjava/lang/Class;Lcom/callapp/contacts/manager/ManagedLifecycle;Lcom/callapp/contacts/manager/preferences/prefs/LongPref;)V

    sput-object v3, Lcom/callapp/contacts/manager/Singletons$SenderType;->TELEGRAM:Lcom/callapp/contacts/manager/Singletons$SenderType;

    .line 129
    new-instance v4, Lcom/callapp/contacts/manager/Singletons$SenderType;

    const-class v10, Lcom/callapp/contacts/api/helper/instantmessaging/WeChatSenderHelper;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->f()Lcom/callapp/contacts/api/helper/instantmessaging/WeChatSenderHelper;

    move-result-object v11

    sget-object v12, Lcom/callapp/contacts/manager/preferences/Prefs;->co:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    const-string v8, "WE_CHAT"

    const/4 v9, 0x5

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/callapp/contacts/manager/Singletons$SenderType;-><init>(Ljava/lang/String;ILjava/lang/Class;Lcom/callapp/contacts/manager/ManagedLifecycle;Lcom/callapp/contacts/manager/preferences/prefs/LongPref;)V

    sput-object v4, Lcom/callapp/contacts/manager/Singletons$SenderType;->WE_CHAT:Lcom/callapp/contacts/manager/Singletons$SenderType;

    .line 130
    new-instance v5, Lcom/callapp/contacts/manager/Singletons$SenderType;

    const-class v16, Lcom/callapp/contacts/api/helper/instantmessaging/ViberSenderHelper;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->g()Lcom/callapp/contacts/api/helper/instantmessaging/ViberSenderHelper;

    move-result-object v17

    sget-object v18, Lcom/callapp/contacts/manager/preferences/Prefs;->cm:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    const-string v14, "VIBER"

    const/4 v15, 0x6

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcom/callapp/contacts/manager/Singletons$SenderType;-><init>(Ljava/lang/String;ILjava/lang/Class;Lcom/callapp/contacts/manager/ManagedLifecycle;Lcom/callapp/contacts/manager/preferences/prefs/LongPref;)V

    sput-object v5, Lcom/callapp/contacts/manager/Singletons$SenderType;->VIBER:Lcom/callapp/contacts/manager/Singletons$SenderType;

    .line 131
    new-instance v13, Lcom/callapp/contacts/manager/Singletons$SenderType;

    const-class v10, Lcom/callapp/contacts/api/helper/instantmessaging/SkypeSenderHelper;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->h()Lcom/callapp/contacts/api/helper/instantmessaging/SkypeSenderHelper;

    move-result-object v11

    sget-object v12, Lcom/callapp/contacts/manager/preferences/Prefs;->cp:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    const-string v8, "SKYPE"

    const/4 v9, 0x7

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/callapp/contacts/manager/Singletons$SenderType;-><init>(Ljava/lang/String;ILjava/lang/Class;Lcom/callapp/contacts/manager/ManagedLifecycle;Lcom/callapp/contacts/manager/preferences/prefs/LongPref;)V

    sput-object v13, Lcom/callapp/contacts/manager/Singletons$SenderType;->SKYPE:Lcom/callapp/contacts/manager/Singletons$SenderType;

    .line 132
    new-instance v7, Lcom/callapp/contacts/manager/Singletons$SenderType;

    const-class v17, Lcom/callapp/contacts/api/helper/instantmessaging/GooglePlusHangoutSenderHelper;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->i()Lcom/callapp/contacts/api/helper/instantmessaging/GooglePlusHangoutSenderHelper;

    move-result-object v18

    sget-object v19, Lcom/callapp/contacts/manager/preferences/Prefs;->cn:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    const-string v15, "GOOGLE_PLUS_HANGOUT"

    const/16 v16, 0x8

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcom/callapp/contacts/manager/Singletons$SenderType;-><init>(Ljava/lang/String;ILjava/lang/Class;Lcom/callapp/contacts/manager/ManagedLifecycle;Lcom/callapp/contacts/manager/preferences/prefs/LongPref;)V

    sput-object v7, Lcom/callapp/contacts/manager/Singletons$SenderType;->GOOGLE_PLUS_HANGOUT:Lcom/callapp/contacts/manager/Singletons$SenderType;

    .line 133
    new-instance v8, Lcom/callapp/contacts/manager/Singletons$SenderType;

    const-class v23, Lcom/callapp/contacts/api/helper/instantmessaging/YahooSenderHelper;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->j()Lcom/callapp/contacts/api/helper/instantmessaging/YahooSenderHelper;

    move-result-object v24

    sget-object v25, Lcom/callapp/contacts/manager/preferences/Prefs;->cr:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    const-string v21, "YAHOO"

    const/16 v22, 0x9

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lcom/callapp/contacts/manager/Singletons$SenderType;-><init>(Ljava/lang/String;ILjava/lang/Class;Lcom/callapp/contacts/manager/ManagedLifecycle;Lcom/callapp/contacts/manager/preferences/prefs/LongPref;)V

    sput-object v8, Lcom/callapp/contacts/manager/Singletons$SenderType;->YAHOO:Lcom/callapp/contacts/manager/Singletons$SenderType;

    .line 134
    new-instance v9, Lcom/callapp/contacts/manager/Singletons$SenderType;

    const-class v17, Lcom/callapp/contacts/api/helper/instantmessaging/FacebookImSenderHelper;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->k()Lcom/callapp/contacts/api/helper/instantmessaging/FacebookImSenderHelper;

    move-result-object v18

    const-string v15, "FACEBOOK"

    const/16 v16, 0xa

    const/16 v19, 0x0

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lcom/callapp/contacts/manager/Singletons$SenderType;-><init>(Ljava/lang/String;ILjava/lang/Class;Lcom/callapp/contacts/manager/ManagedLifecycle;Lcom/callapp/contacts/manager/preferences/prefs/LongPref;)V

    sput-object v9, Lcom/callapp/contacts/manager/Singletons$SenderType;->FACEBOOK:Lcom/callapp/contacts/manager/Singletons$SenderType;

    .line 135
    new-instance v10, Lcom/callapp/contacts/manager/Singletons$SenderType;

    const-class v23, Lcom/callapp/contacts/api/helper/instantmessaging/TwitterImSenderHelper;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->l()Lcom/callapp/contacts/api/helper/instantmessaging/TwitterImSenderHelper;

    move-result-object v24

    const-string v21, "TWITTER"

    const/16 v22, 0xb

    const/16 v25, 0x0

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Lcom/callapp/contacts/manager/Singletons$SenderType;-><init>(Ljava/lang/String;ILjava/lang/Class;Lcom/callapp/contacts/manager/ManagedLifecycle;Lcom/callapp/contacts/manager/preferences/prefs/LongPref;)V

    sput-object v10, Lcom/callapp/contacts/manager/Singletons$SenderType;->TWITTER:Lcom/callapp/contacts/manager/Singletons$SenderType;

    .line 136
    new-instance v11, Lcom/callapp/contacts/manager/Singletons$SenderType;

    const-class v17, Lcom/callapp/contacts/api/helper/instantmessaging/MessengerImSenderHelper;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->m()Lcom/callapp/contacts/api/helper/instantmessaging/MessengerImSenderHelper;

    move-result-object v18

    sget-object v19, Lcom/callapp/contacts/manager/preferences/Prefs;->cq:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    const-string v15, "MESSENGER"

    const/16 v16, 0xc

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Lcom/callapp/contacts/manager/Singletons$SenderType;-><init>(Ljava/lang/String;ILjava/lang/Class;Lcom/callapp/contacts/manager/ManagedLifecycle;Lcom/callapp/contacts/manager/preferences/prefs/LongPref;)V

    sput-object v11, Lcom/callapp/contacts/manager/Singletons$SenderType;->MESSENGER:Lcom/callapp/contacts/manager/Singletons$SenderType;

    .line 137
    new-instance v12, Lcom/callapp/contacts/manager/Singletons$SenderType;

    const-class v23, Lcom/callapp/contacts/api/helper/instantmessaging/InstagramImSenderHelper;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->n()Lcom/callapp/contacts/api/helper/instantmessaging/InstagramImSenderHelper;

    move-result-object v24

    const-string v21, "INSTAGRAM"

    const/16 v22, 0xd

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Lcom/callapp/contacts/manager/Singletons$SenderType;-><init>(Ljava/lang/String;ILjava/lang/Class;Lcom/callapp/contacts/manager/ManagedLifecycle;Lcom/callapp/contacts/manager/preferences/prefs/LongPref;)V

    sput-object v12, Lcom/callapp/contacts/manager/Singletons$SenderType;->INSTAGRAM:Lcom/callapp/contacts/manager/Singletons$SenderType;

    .line 138
    new-instance v20, Lcom/callapp/contacts/manager/Singletons$SenderType;

    const-class v17, Lcom/callapp/contacts/api/helper/instantmessaging/DuoSenderHelper;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->o()Lcom/callapp/contacts/api/helper/instantmessaging/DuoSenderHelper;

    move-result-object v18

    sget-object v19, Lcom/callapp/contacts/manager/preferences/Prefs;->cv:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    const-string v15, "DUO"

    const/16 v16, 0xe

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Lcom/callapp/contacts/manager/Singletons$SenderType;-><init>(Ljava/lang/String;ILjava/lang/Class;Lcom/callapp/contacts/manager/ManagedLifecycle;Lcom/callapp/contacts/manager/preferences/prefs/LongPref;)V

    sput-object v20, Lcom/callapp/contacts/manager/Singletons$SenderType;->DUO:Lcom/callapp/contacts/manager/Singletons$SenderType;

    .line 139
    new-instance v14, Lcom/callapp/contacts/manager/Singletons$SenderType;

    const-class v24, Lcom/callapp/contacts/api/helper/instantmessaging/SignalSenderHelper;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->p()Lcom/callapp/contacts/api/helper/instantmessaging/SignalSenderHelper;

    move-result-object v25

    sget-object v26, Lcom/callapp/contacts/manager/preferences/Prefs;->cw:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    const-string v22, "SIGNAL"

    const/16 v23, 0xf

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v26}, Lcom/callapp/contacts/manager/Singletons$SenderType;-><init>(Ljava/lang/String;ILjava/lang/Class;Lcom/callapp/contacts/manager/ManagedLifecycle;Lcom/callapp/contacts/manager/preferences/prefs/LongPref;)V

    sput-object v14, Lcom/callapp/contacts/manager/Singletons$SenderType;->SIGNAL:Lcom/callapp/contacts/manager/Singletons$SenderType;

    .line 140
    new-instance v15, Lcom/callapp/contacts/manager/Singletons$SenderType;

    const-class v30, Lcom/callapp/contacts/api/helper/instantmessaging/AlloSenderHelper;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->q()Lcom/callapp/contacts/api/helper/instantmessaging/AlloSenderHelper;

    move-result-object v31

    sget-object v32, Lcom/callapp/contacts/manager/preferences/Prefs;->cx:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    const-string v28, "ALLO"

    const/16 v29, 0x10

    move-object/from16 v27, v15

    invoke-direct/range {v27 .. v32}, Lcom/callapp/contacts/manager/Singletons$SenderType;-><init>(Ljava/lang/String;ILjava/lang/Class;Lcom/callapp/contacts/manager/ManagedLifecycle;Lcom/callapp/contacts/manager/preferences/prefs/LongPref;)V

    sput-object v15, Lcom/callapp/contacts/manager/Singletons$SenderType;->ALLO:Lcom/callapp/contacts/manager/Singletons$SenderType;

    move-object/from16 v16, v15

    const/16 v15, 0x11

    new-array v15, v15, [Lcom/callapp/contacts/manager/Singletons$SenderType;

    const/16 v17, 0x0

    aput-object v6, v15, v17

    const/4 v6, 0x1

    aput-object v0, v15, v6

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v7, v15, v0

    const/16 v0, 0x9

    aput-object v8, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v20, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v16, v15, v0

    .line 123
    sput-object v15, Lcom/callapp/contacts/manager/Singletons$SenderType;->$VALUES:[Lcom/callapp/contacts/manager/Singletons$SenderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;Lcom/callapp/contacts/manager/ManagedLifecycle;Lcom/callapp/contacts/manager/preferences/prefs/LongPref;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lcom/callapp/contacts/manager/ManagedLifecycle;",
            "Lcom/callapp/contacts/manager/preferences/prefs/LongPref;",
            ")V"
        }
    .end annotation

    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 147
    iput-object p3, p0, Lcom/callapp/contacts/manager/Singletons$SenderType;->senderClass:Ljava/lang/Class;

    .line 148
    iput-object p4, p0, Lcom/callapp/contacts/manager/Singletons$SenderType;->singletonMember:Lcom/callapp/contacts/manager/ManagedLifecycle;

    .line 149
    iput-object p5, p0, Lcom/callapp/contacts/manager/Singletons$SenderType;->openCount:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    return-void
.end method

.method public static synthetic access$1800(Lcom/callapp/contacts/manager/Singletons$SenderType;)Lcom/callapp/contacts/manager/ManagedLifecycle;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/callapp/contacts/manager/Singletons$SenderType;->singletonMember:Lcom/callapp/contacts/manager/ManagedLifecycle;

    return-object p0
.end method

.method public static synthetic access$1802(Lcom/callapp/contacts/manager/Singletons$SenderType;Lcom/callapp/contacts/manager/ManagedLifecycle;)Lcom/callapp/contacts/manager/ManagedLifecycle;
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/callapp/contacts/manager/Singletons$SenderType;->singletonMember:Lcom/callapp/contacts/manager/ManagedLifecycle;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/callapp/contacts/manager/Singletons$SenderType;)Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/callapp/contacts/manager/Singletons$SenderType;->getSenderInstance()Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lcom/callapp/contacts/manager/Singletons$SenderType;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/callapp/contacts/manager/Singletons$SenderType;->incUseCount()V

    return-void
.end method

.method private getNewInstance()Lcom/callapp/contacts/manager/ManagedLifecycle;
    .locals 2

    .line 173
    sget-object v0, Lcom/callapp/contacts/manager/Singletons$2;->a:[I

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/Singletons$SenderType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    .line 207
    :pswitch_0
    new-instance v0, Lcom/callapp/contacts/api/helper/instantmessaging/MessengerImSenderHelper;

    invoke-direct {v0}, Lcom/callapp/contacts/api/helper/instantmessaging/MessengerImSenderHelper;-><init>()V

    return-object v0

    .line 205
    :pswitch_1
    new-instance v0, Lcom/callapp/contacts/api/helper/instantmessaging/InstagramImSenderHelper;

    invoke-direct {v0}, Lcom/callapp/contacts/api/helper/instantmessaging/InstagramImSenderHelper;-><init>()V

    return-object v0

    .line 203
    :pswitch_2
    new-instance v0, Lcom/callapp/contacts/api/helper/instantmessaging/TwitterImSenderHelper;

    invoke-direct {v0}, Lcom/callapp/contacts/api/helper/instantmessaging/TwitterImSenderHelper;-><init>()V

    return-object v0

    .line 201
    :pswitch_3
    new-instance v0, Lcom/callapp/contacts/api/helper/instantmessaging/FacebookImSenderHelper;

    invoke-direct {v0}, Lcom/callapp/contacts/api/helper/instantmessaging/FacebookImSenderHelper;-><init>()V

    return-object v0

    .line 199
    :pswitch_4
    new-instance v0, Lcom/callapp/contacts/api/helper/instantmessaging/AlloSenderHelper;

    invoke-direct {v0}, Lcom/callapp/contacts/api/helper/instantmessaging/AlloSenderHelper;-><init>()V

    return-object v0

    .line 197
    :pswitch_5
    new-instance v0, Lcom/callapp/contacts/api/helper/instantmessaging/SignalSenderHelper;

    invoke-direct {v0}, Lcom/callapp/contacts/api/helper/instantmessaging/SignalSenderHelper;-><init>()V

    return-object v0

    .line 195
    :pswitch_6
    new-instance v0, Lcom/callapp/contacts/api/helper/instantmessaging/DuoSenderHelper;

    invoke-direct {v0}, Lcom/callapp/contacts/api/helper/instantmessaging/DuoSenderHelper;-><init>()V

    return-object v0

    .line 193
    :pswitch_7
    new-instance v0, Lcom/callapp/contacts/api/helper/instantmessaging/SmsSenderHelper;

    invoke-direct {v0}, Lcom/callapp/contacts/api/helper/instantmessaging/SmsSenderHelper;-><init>()V

    return-object v0

    .line 191
    :pswitch_8
    new-instance v0, Lcom/callapp/contacts/api/helper/instantmessaging/EmailSenderHelper;

    invoke-direct {v0}, Lcom/callapp/contacts/api/helper/instantmessaging/EmailSenderHelper;-><init>()V

    return-object v0

    .line 189
    :pswitch_9
    new-instance v0, Lcom/callapp/contacts/api/helper/instantmessaging/SkypeSenderHelper;

    invoke-direct {v0}, Lcom/callapp/contacts/api/helper/instantmessaging/SkypeSenderHelper;-><init>()V

    return-object v0

    .line 187
    :pswitch_a
    new-instance v0, Lcom/callapp/contacts/api/helper/instantmessaging/WeChatSenderHelper;

    invoke-direct {v0}, Lcom/callapp/contacts/api/helper/instantmessaging/WeChatSenderHelper;-><init>()V

    return-object v0

    .line 185
    :pswitch_b
    new-instance v0, Lcom/callapp/contacts/api/helper/instantmessaging/YahooSenderHelper;

    invoke-direct {v0}, Lcom/callapp/contacts/api/helper/instantmessaging/YahooSenderHelper;-><init>()V

    return-object v0

    .line 183
    :pswitch_c
    new-instance v0, Lcom/callapp/contacts/api/helper/instantmessaging/GooglePlusHangoutSenderHelper;

    invoke-direct {v0}, Lcom/callapp/contacts/api/helper/instantmessaging/GooglePlusHangoutSenderHelper;-><init>()V

    return-object v0

    .line 181
    :pswitch_d
    new-instance v0, Lcom/callapp/contacts/api/helper/instantmessaging/ViberSenderHelper;

    invoke-direct {v0}, Lcom/callapp/contacts/api/helper/instantmessaging/ViberSenderHelper;-><init>()V

    return-object v0

    .line 179
    :pswitch_e
    new-instance v0, Lcom/callapp/contacts/api/helper/instantmessaging/TelegramSenderHelper;

    invoke-direct {v0}, Lcom/callapp/contacts/api/helper/instantmessaging/TelegramSenderHelper;-><init>()V

    return-object v0

    .line 177
    :pswitch_f
    new-instance v0, Lcom/callapp/contacts/api/helper/instantmessaging/WhatsApp4BSenderHelper;

    invoke-direct {v0}, Lcom/callapp/contacts/api/helper/instantmessaging/WhatsApp4BSenderHelper;-><init>()V

    return-object v0

    .line 175
    :pswitch_10
    new-instance v0, Lcom/callapp/contacts/api/helper/instantmessaging/WhatsAppSenderHelper;

    invoke-direct {v0}, Lcom/callapp/contacts/api/helper/instantmessaging/WhatsAppSenderHelper;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSenderInstance()Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons$SenderType;->singletonMember:Lcom/callapp/contacts/manager/ManagedLifecycle;

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons$SenderType;->senderClass:Ljava/lang/Class;

    monitor-enter v0

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons$SenderType;->singletonMember:Lcom/callapp/contacts/manager/ManagedLifecycle;

    if-nez v1, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/callapp/contacts/manager/Singletons$SenderType;->getNewInstance()Lcom/callapp/contacts/manager/ManagedLifecycle;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons$SenderType;->singletonMember:Lcom/callapp/contacts/manager/ManagedLifecycle;

    .line 165
    invoke-static {v1}, Lcom/callapp/contacts/manager/Singletons;->b(Lcom/callapp/contacts/manager/ManagedLifecycle;)Lcom/callapp/contacts/manager/ManagedLifecycle;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons$SenderType;->singletonMember:Lcom/callapp/contacts/manager/ManagedLifecycle;

    .line 167
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 169
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons$SenderType;->singletonMember:Lcom/callapp/contacts/manager/ManagedLifecycle;

    check-cast v0, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;

    return-object v0
.end method

.method private incUseCount()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons$SenderType;->openCount:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    .line 1025
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->a()Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/manager/Singletons$SenderType;
    .locals 1

    .line 123
    const-class v0, Lcom/callapp/contacts/manager/Singletons$SenderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/manager/Singletons$SenderType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/manager/Singletons$SenderType;
    .locals 1

    .line 123
    sget-object v0, Lcom/callapp/contacts/manager/Singletons$SenderType;->$VALUES:[Lcom/callapp/contacts/manager/Singletons$SenderType;

    invoke-virtual {v0}, [Lcom/callapp/contacts/manager/Singletons$SenderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/manager/Singletons$SenderType;

    return-object v0
.end method


# virtual methods
.method public final getUseCount()J
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons$SenderType;->openCount:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
