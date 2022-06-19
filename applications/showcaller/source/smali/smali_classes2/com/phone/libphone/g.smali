.class public Lcom/phone/libphone/g;
.super Ljava/lang/Object;
.source "PhoneNumberOfflineGeocoder.java"


# static fields
.field private static a:Lcom/phone/libphone/g;


# instance fields
.field private b:Lcom/phone/libphone/prefixmapper/d;

.field private c:Lcom/phone/libphone/PhoneNumberUtil;

.field private d:Z


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
    iput-object v0, p0, Lcom/phone/libphone/g;->b:Lcom/phone/libphone/prefixmapper/d;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/phone/libphone/g;->d:Z

    .line 4
    new-instance v0, Lcom/phone/libphone/prefixmapper/d;

    invoke-direct {v0, p1}, Lcom/phone/libphone/prefixmapper/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/phone/libphone/g;->b:Lcom/phone/libphone/prefixmapper/d;

    .line 5
    iget-object p1, p0, Lcom/phone/libphone/g;->c:Lcom/phone/libphone/PhoneNumberUtil;

    if-nez p1, :cond_0

    .line 6
    invoke-static {}, Lcom/phone/libphone/PhoneNumberUtil;->q()Lcom/phone/libphone/PhoneNumberUtil;

    move-result-object p1

    iput-object p1, p0, Lcom/phone/libphone/g;->c:Lcom/phone/libphone/PhoneNumberUtil;

    :cond_0
    return-void
.end method

.method private a(Lcom/phone/libphone/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/g;->c:Lcom/phone/libphone/PhoneNumberUtil;

    .line 2
    invoke-virtual {p1}, Lcom/phone/libphone/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/phone/libphone/PhoneNumberUtil;->B(I)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/phone/libphone/g;->g(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "ZZ"

    move-object v2, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    iget-object v4, p0, Lcom/phone/libphone/g;->c:Lcom/phone/libphone/PhoneNumberUtil;

    invoke-virtual {v4, p1, v3}, Lcom/phone/libphone/PhoneNumberUtil;->G(Lcom/phone/libphone/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string p1, ""

    return-object p1

    :cond_2
    move-object v2, v3

    goto :goto_0

    .line 8
    :cond_3
    invoke-direct {p0, v2, p2}, Lcom/phone/libphone/g;->g(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized d()Lcom/phone/libphone/g;
    .locals 3

    const-class v0, Lcom/phone/libphone/g;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/phone/libphone/g;->a:Lcom/phone/libphone/g;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/phone/libphone/g;

    sget-object v2, Lcom/phone/libphone/k;->g:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/phone/libphone/g;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/phone/libphone/g;->a:Lcom/phone/libphone/g;

    .line 3
    :cond_0
    sget-object v1, Lcom/phone/libphone/g;->a:Lcom/phone/libphone/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private g(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p1, :cond_1

    const-string v1, "ZZ"

    .line 1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "001"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public b(Lcom/phone/libphone/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/phone/libphone/g;->d:Z

    .line 2
    iget-object v1, p0, Lcom/phone/libphone/g;->c:Lcom/phone/libphone/PhoneNumberUtil;

    invoke-virtual {v1, p1}, Lcom/phone/libphone/PhoneNumberUtil;->w(Lcom/phone/libphone/Phonenumber$PhoneNumber;)Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;->o:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    if-ne v1, v2, :cond_0

    const-string p1, ""

    return-object p1

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/phone/libphone/g;->c:Lcom/phone/libphone/PhoneNumberUtil;

    invoke-virtual {p1}, Lcom/phone/libphone/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/phone/libphone/PhoneNumberUtil;->D(Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iput-boolean v0, p0, Lcom/phone/libphone/g;->d:Z

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/phone/libphone/g;->a(Lcom/phone/libphone/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/phone/libphone/g;->c(Lcom/phone/libphone/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/phone/libphone/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/phone/libphone/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    invoke-static {v2}, Lcom/phone/libphone/PhoneNumberUtil;->p(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/phone/libphone/g;->c:Lcom/phone/libphone/PhoneNumberUtil;

    invoke-virtual {v3, p1}, Lcom/phone/libphone/PhoneNumberUtil;->u(Lcom/phone/libphone/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 5
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/phone/libphone/g;->c:Lcom/phone/libphone/PhoneNumberUtil;

    invoke-virtual {p1}, Lcom/phone/libphone/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/phone/libphone/PhoneNumberUtil;->y(I)Ljava/lang/String;

    move-result-object v3

    .line 8
    :try_start_0
    iget-object v5, p0, Lcom/phone/libphone/g;->c:Lcom/phone/libphone/PhoneNumberUtil;

    invoke-virtual {v5, v2, v3}, Lcom/phone/libphone/PhoneNumberUtil;->S(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/phone/libphone/Phonenumber$PhoneNumber;

    move-result-object v2
    :try_end_0
    .catch Lcom/phone/libphone/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, p1

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/phone/libphone/g;->b:Lcom/phone/libphone/prefixmapper/d;

    invoke-virtual {v3, v2, v0, v4, v1}, Lcom/phone/libphone/prefixmapper/d;->b(Lcom/phone/libphone/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/phone/libphone/g;->b:Lcom/phone/libphone/prefixmapper/d;

    invoke-virtual {v2, p1, v0, v4, v1}, Lcom/phone/libphone/prefixmapper/d;->b(Lcom/phone/libphone/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/phone/libphone/g;->d:Z

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/phone/libphone/g;->d:Z

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/phone/libphone/g;->a(Lcom/phone/libphone/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/phone/libphone/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/g;->c:Lcom/phone/libphone/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcom/phone/libphone/PhoneNumberUtil;->w(Lcom/phone/libphone/Phonenumber$PhoneNumber;)Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;->o:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    if-ne v0, v1, :cond_0

    const-string p1, ""

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/phone/libphone/g;->f(Lcom/phone/libphone/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f(Lcom/phone/libphone/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lcom/phone/libphone/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-static {v1}, Lcom/phone/libphone/PhoneNumberUtil;->p(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/phone/libphone/g;->c:Lcom/phone/libphone/PhoneNumberUtil;

    invoke-virtual {v2, p1}, Lcom/phone/libphone/PhoneNumberUtil;->u(Lcom/phone/libphone/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/phone/libphone/g;->c:Lcom/phone/libphone/PhoneNumberUtil;

    invoke-virtual {p1}, Lcom/phone/libphone/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/phone/libphone/PhoneNumberUtil;->y(I)Ljava/lang/String;

    move-result-object v2

    .line 8
    :try_start_0
    iget-object v4, p0, Lcom/phone/libphone/g;->c:Lcom/phone/libphone/PhoneNumberUtil;

    invoke-virtual {v4, v1, v2}, Lcom/phone/libphone/PhoneNumberUtil;->S(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/phone/libphone/Phonenumber$PhoneNumber;

    move-result-object p1
    :try_end_0
    .catch Lcom/phone/libphone/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    iget-object v1, p0, Lcom/phone/libphone/g;->b:Lcom/phone/libphone/prefixmapper/d;

    invoke-virtual {v1, p1, v0, v3, p2}, Lcom/phone/libphone/prefixmapper/d;->b(Lcom/phone/libphone/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/phone/libphone/g;->b:Lcom/phone/libphone/prefixmapper/d;

    invoke-virtual {v1, p1, v0, v3, p2}, Lcom/phone/libphone/prefixmapper/d;->b(Lcom/phone/libphone/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    return-object p1

    :cond_1
    return-object v3
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/g;->d:Z

    return v0
.end method

.method public i(Lcom/phone/libphone/Phonenumber$PhoneNumber;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/g;->c:Lcom/phone/libphone/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcom/phone/libphone/PhoneNumberUtil;->E(Lcom/phone/libphone/Phonenumber$PhoneNumber;)Z

    move-result p1

    return p1
.end method
