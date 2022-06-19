.class public Lcom/phone/libphone/h;
.super Ljava/lang/Object;
.source "PhoneNumberToCarrierMapper.java"


# static fields
.field private static a:Lcom/phone/libphone/h;


# instance fields
.field private b:Lcom/phone/libphone/prefixmapper/d;

.field private c:Lcom/phone/libphone/PhoneNumberUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/phone/libphone/h;->b:Lcom/phone/libphone/prefixmapper/d;

    .line 3
    iput-object v0, p0, Lcom/phone/libphone/h;->c:Lcom/phone/libphone/PhoneNumberUtil;

    .line 4
    new-instance v0, Lcom/phone/libphone/prefixmapper/d;

    invoke-direct {v0, p1}, Lcom/phone/libphone/prefixmapper/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/phone/libphone/h;->b:Lcom/phone/libphone/prefixmapper/d;

    .line 5
    iget-object p1, p0, Lcom/phone/libphone/h;->c:Lcom/phone/libphone/PhoneNumberUtil;

    if-nez p1, :cond_0

    .line 6
    invoke-static {}, Lcom/phone/libphone/PhoneNumberUtil;->q()Lcom/phone/libphone/PhoneNumberUtil;

    move-result-object p1

    iput-object p1, p0, Lcom/phone/libphone/h;->c:Lcom/phone/libphone/PhoneNumberUtil;

    :cond_0
    return-void
.end method

.method public static declared-synchronized a()Lcom/phone/libphone/h;
    .locals 3

    const-class v0, Lcom/phone/libphone/h;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/phone/libphone/h;->a:Lcom/phone/libphone/h;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/phone/libphone/h;

    sget-object v2, Lcom/phone/libphone/k;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/phone/libphone/h;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/phone/libphone/h;->a:Lcom/phone/libphone/h;

    .line 3
    :cond_0
    sget-object v1, Lcom/phone/libphone/h;->a:Lcom/phone/libphone/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private d(Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;->e:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;->f:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;->l:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public b(Lcom/phone/libphone/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/h;->c:Lcom/phone/libphone/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcom/phone/libphone/PhoneNumberUtil;->w(Lcom/phone/libphone/Phonenumber$PhoneNumber;)Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/phone/libphone/h;->d(Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/phone/libphone/h;->c(Lcom/phone/libphone/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public c(Lcom/phone/libphone/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p2

    .line 3
    iget-object v1, p0, Lcom/phone/libphone/h;->b:Lcom/phone/libphone/prefixmapper/d;

    const-string v2, ""

    invoke-virtual {v1, p1, v0, v2, p2}, Lcom/phone/libphone/prefixmapper/d;->b(Lcom/phone/libphone/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
