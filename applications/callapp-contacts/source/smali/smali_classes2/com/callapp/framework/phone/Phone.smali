.class public Lcom/callapp/framework/phone/Phone;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static a:Lcom/callapp/framework/phone/CountryRegionProvider;

.field public static final b:Lcom/callapp/framework/phone/Phone;

.field private static final g:Ljava/util/Locale;


# instance fields
.field public c:Lcom/callapp/framework/phone/PhoneType;

.field public transient d:Ljava/lang/String;

.field public transient e:Ljava/lang/String;

.field public transient f:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private transient j:Lcom/google/i18n/phonenumbers/k$a;

.field private transient k:Ljava/lang/String;

.field private transient l:Ljava/lang/String;

.field private transient m:Ljava/lang/String;

.field private transient n:Ljava/lang/String;

.field private transient o:Ljava/lang/String;

.field private transient p:Ljava/lang/String;

.field private transient q:Ljava/lang/String;

.field private transient r:Ljava/lang/String;

.field private transient s:Ljava/lang/String;

.field private t:Ljava/lang/Boolean;

.field private final u:Lcom/callapp/framework/util/SerializableLock;

.field private v:Ljava/lang/Boolean;

.field private final w:Lcom/callapp/framework/util/SerializableLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/callapp/framework/phone/NullCountryRegionProvider;

    invoke-direct {v0}, Lcom/callapp/framework/phone/NullCountryRegionProvider;-><init>()V

    sput-object v0, Lcom/callapp/framework/phone/Phone;->a:Lcom/callapp/framework/phone/CountryRegionProvider;

    const-string v0, ""

    .line 28
    invoke-static {v0}, Lcom/callapp/framework/phone/Phone;->b(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    sput-object v0, Lcom/callapp/framework/phone/Phone;->b:Lcom/callapp/framework/phone/Phone;

    .line 43
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "US"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/callapp/framework/phone/Phone;->g:Ljava/util/Locale;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/callapp/framework/phone/PhoneType;->OTHER:Lcom/callapp/framework/phone/PhoneType;

    iput-object v0, p0, Lcom/callapp/framework/phone/Phone;->c:Lcom/callapp/framework/phone/PhoneType;

    .line 71
    new-instance v0, Lcom/callapp/framework/util/SerializableLock;

    invoke-direct {v0}, Lcom/callapp/framework/util/SerializableLock;-><init>()V

    iput-object v0, p0, Lcom/callapp/framework/phone/Phone;->u:Lcom/callapp/framework/util/SerializableLock;

    .line 73
    new-instance v0, Lcom/callapp/framework/util/SerializableLock;

    invoke-direct {v0}, Lcom/callapp/framework/util/SerializableLock;-><init>()V

    iput-object v0, p0, Lcom/callapp/framework/phone/Phone;->w:Lcom/callapp/framework/util/SerializableLock;

    if-nez p1, :cond_0

    const-string p1, ""

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/callapp/framework/phone/Phone;->h:Ljava/lang/String;

    return-void
.end method

.method private static a(Lcom/google/i18n/phonenumbers/k$a;)Lcom/callapp/common/util/SerializablePair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/i18n/phonenumbers/k$a;",
            ")",
            "Lcom/callapp/common/util/SerializablePair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getLengthOfNationalDestinationCode(Lcom/google/i18n/phonenumbers/k$a;)I

    move-result v0

    if-lez v0, :cond_0

    .line 91
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;

    move-result-object p0

    .line 92
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 95
    new-instance v0, Lcom/callapp/common/util/SerializablePair;

    invoke-direct {v0, v1, p0}, Lcom/callapp/common/util/SerializablePair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;
    .locals 0

    .line 493
    invoke-static {p0}, Lcom/callapp/framework/phone/Phone;->b(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    .line 496
    invoke-direct {p0, p1}, Lcom/callapp/framework/phone/Phone;->d(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/framework/phone/Phone;->j:Lcom/google/i18n/phonenumbers/k$a;

    return-object p0
.end method

.method private a(Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;)Ljava/lang/String;
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 514
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 515
    iget-object p1, p0, Lcom/callapp/framework/phone/Phone;->h:Ljava/lang/String;

    return-object p1

    .line 518
    :cond_1
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getPhoneNumber()Lcom/google/i18n/phonenumbers/k$a;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;)Ljava/lang/String;

    move-result-object p1

    .line 519
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->i:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/callapp/framework/phone/Phone;->i:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 358
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 364
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "+"

    .line 365
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 366
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string v0, " "

    const-string v1, "."

    .line 372
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "-"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "("

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ")."

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;
    .locals 1

    .line 488
    new-instance v0, Lcom/callapp/framework/phone/Phone;

    invoke-direct {v0, p0}, Lcom/callapp/framework/phone/Phone;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;
    .locals 8

    const-string v0, "+"

    const/4 v1, 0x0

    .line 630
    iput-object v1, p0, Lcom/callapp/framework/phone/Phone;->v:Ljava/lang/Boolean;

    :try_start_0
    const-string v2, "*"

    .line 632
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 636
    :cond_0
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;

    move-result-object v2

    .line 6063
    iget-wide v3, v2, Lcom/google/i18n/phonenumbers/k$a;->b:J

    const-wide/32 v5, 0xf423f

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    .line 640
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 641
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/i18n/phonenumbers/k$a;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/callapp/framework/phone/Phone;->v:Ljava/lang/Boolean;

    .line 642
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v3, :cond_2

    :try_start_1
    const-string v3, "00"

    .line 649
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    .line 650
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, p1

    .line 653
    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 655
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;

    move-result-object p2

    .line 657
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/i18n/phonenumbers/k$a;)Z

    move-result v0
    :try_end_1
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_2

    .line 659
    :try_start_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/callapp/framework/phone/Phone;->v:Ljava/lang/Boolean;
    :try_end_2
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-object v2, p2

    .line 7063
    :catch_1
    :cond_2
    :try_start_3
    iget-wide v3, v2, Lcom/google/i18n/phonenumbers/k$a;->b:J

    const-wide/32 v5, 0x1869f

    cmp-long p2, v3, v5

    if-gtz p2, :cond_3

    .line 670
    new-instance v2, Lcom/google/i18n/phonenumbers/k$a;

    invoke-direct {v2}, Lcom/google/i18n/phonenumbers/k$a;-><init>()V

    .line 671
    invoke-virtual {v2, p1}, Lcom/google/i18n/phonenumbers/k$a;->b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;

    .line 672
    iput-object v1, p0, Lcom/callapp/framework/phone/Phone;->v:Ljava/lang/Boolean;

    goto :goto_2

    .line 7078
    :cond_3
    iget-boolean p2, v2, Lcom/google/i18n/phonenumbers/k$a;->c:Z

    if-eqz p2, :cond_4

    .line 7079
    iget-object p2, v2, Lcom/google/i18n/phonenumbers/k$a;->d:Ljava/lang/String;

    .line 677
    iput-object p2, p0, Lcom/callapp/framework/phone/Phone;->i:Ljava/lang/String;

    .line 678
    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/k$a;->a()Lcom/google/i18n/phonenumbers/k$a;

    goto :goto_2

    .line 680
    :cond_4
    iput-object v1, p0, Lcom/callapp/framework/phone/Phone;->i:Ljava/lang/String;

    goto :goto_2

    .line 633
    :cond_5
    :goto_1
    new-instance v2, Lcom/google/i18n/phonenumbers/k$a;

    invoke-direct {v2}, Lcom/google/i18n/phonenumbers/k$a;-><init>()V

    .line 634
    invoke-virtual {v2, p1}, Lcom/google/i18n/phonenumbers/k$a;->b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;
    :try_end_3
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 685
    :catch_2
    new-instance v2, Lcom/google/i18n/phonenumbers/k$a;

    invoke-direct {v2}, Lcom/google/i18n/phonenumbers/k$a;-><init>()V

    .line 686
    invoke-virtual {v2, p1}, Lcom/google/i18n/phonenumbers/k$a;->b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;

    .line 687
    iput-object v1, p0, Lcom/callapp/framework/phone/Phone;->v:Ljava/lang/Boolean;

    :goto_2
    return-object v2
.end method

.method private b(Lcom/google/i18n/phonenumbers/k$a;)Z
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->v:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->w:Lcom/callapp/framework/util/SerializableLock;

    monitor-enter v0

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/callapp/framework/phone/Phone;->v:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 238
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/i18n/phonenumbers/k$a;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/framework/phone/Phone;->v:Ljava/lang/Boolean;

    .line 240
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 243
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/callapp/framework/phone/Phone;->v:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->h:Ljava/lang/String;

    const/4 v1, 0x0

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getNationalNumber()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private d(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;
    .locals 8

    .line 579
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->j:Lcom/google/i18n/phonenumbers/k$a;

    if-eqz v0, :cond_0

    return-object v0

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->w:Lcom/callapp/framework/util/SerializableLock;

    monitor-enter v0

    .line 585
    :try_start_0
    iget-object v1, p0, Lcom/callapp/framework/phone/Phone;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/phone/PhoneNumberUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 586
    invoke-static {v1}, Lcom/callapp/framework/phone/PhoneNumberUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 589
    invoke-direct {p0, v1, p1}, Lcom/callapp/framework/phone/Phone;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;

    move-result-object v2

    .line 591
    invoke-direct {p0, v2}, Lcom/callapp/framework/phone/Phone;->b(Lcom/google/i18n/phonenumbers/k$a;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 592
    monitor-exit v0

    return-object v2

    .line 4063
    :cond_1
    iget-wide v3, v2, Lcom/google/i18n/phonenumbers/k$a;->b:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    .line 598
    monitor-exit v0

    return-object v2

    .line 602
    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 604
    monitor-exit v0

    return-object v2

    .line 607
    :cond_3
    invoke-static {v2}, Lcom/callapp/framework/phone/Phone;->a(Lcom/google/i18n/phonenumbers/k$a;)Lcom/callapp/common/util/SerializablePair;

    move-result-object v3

    .line 608
    sget-object v4, Lcom/callapp/framework/phone/Phone;->a:Lcom/callapp/framework/phone/CountryRegionProvider;

    invoke-interface {v4}, Lcom/callapp/framework/phone/CountryRegionProvider;->b()Ljava/lang/String;

    move-result-object v4

    .line 609
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/callapp/common/util/SerializablePair;->a:Ljava/io/Serializable;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 614
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/callapp/framework/phone/Phone;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;

    move-result-object v1

    .line 616
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result p1

    .line 6047
    iget v3, v1, Lcom/google/i18n/phonenumbers/k$a;->a:I

    if-ne p1, v3, :cond_5

    .line 617
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/i18n/phonenumbers/k$a;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 620
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/callapp/framework/phone/Phone;->v:Ljava/lang/Boolean;

    move-object v2, v1

    .line 624
    :cond_5
    monitor-exit v0

    return-object v2

    .line 610
    :cond_6
    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 625
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private f()V
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getPhoneNumber()Lcom/google/i18n/phonenumbers/k$a;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/phone/Phone;->a(Lcom/google/i18n/phonenumbers/k$a;)Lcom/callapp/common/util/SerializablePair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v1, v0, Lcom/callapp/common/util/SerializablePair;->a:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/callapp/framework/phone/Phone;->r:Ljava/lang/String;

    .line 83
    iget-object v0, v0, Lcom/callapp/common/util/SerializablePair;->b:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/callapp/framework/phone/Phone;->s:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static getCountryRegionProvider()Lcom/callapp/framework/phone/CountryRegionProvider;
    .locals 1

    .line 561
    sget-object v0, Lcom/callapp/framework/phone/Phone;->a:Lcom/callapp/framework/phone/CountryRegionProvider;

    return-object v0
.end method

.method public static setCountryRegionProvider(Lcom/callapp/framework/phone/CountryRegionProvider;)V
    .locals 0

    .line 565
    sput-object p0, Lcom/callapp/framework/phone/Phone;->a:Lcom/callapp/framework/phone/CountryRegionProvider;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 297
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->E164:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-direct {p0, v0}, Lcom/callapp/framework/phone/Phone;->a(Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;)Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-static {v0}, Lcom/callapp/framework/phone/PhoneNumberUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/framework/phone/Phone;->k:Ljava/lang/String;

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getRegionCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/framework/phone/Phone;->m:Ljava/lang/String;

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/framework/phone/Phone;->m:Ljava/lang/String;

    .line 423
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/callapp/framework/phone/Phone;->m:Ljava/lang/String;

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 309
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-direct {p0, v0}, Lcom/callapp/framework/phone/Phone;->a(Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;)Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-direct {p0, v0}, Lcom/callapp/framework/phone/Phone;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {v0}, Lcom/callapp/framework/phone/PhoneNumberUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    iput-object v0, p0, Lcom/callapp/framework/phone/Phone;->l:Ljava/lang/String;

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 336
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-direct {p0, v0}, Lcom/callapp/framework/phone/Phone;->a(Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/framework/phone/Phone;->o:Ljava/lang/String;

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 390
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-direct {p0, v0}, Lcom/callapp/framework/phone/Phone;->a(Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/framework/phone/Phone;->n:Ljava/lang/String;

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 403
    sget-object v0, Lcom/callapp/framework/phone/Phone;->a:Lcom/callapp/framework/phone/CountryRegionProvider;

    invoke-interface {v0}, Lcom/callapp/framework/phone/CountryRegionProvider;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/framework/phone/Phone;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 530
    :cond_0
    instance-of v0, p1, Lcom/callapp/framework/phone/Phone;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 534
    :cond_1
    check-cast p1, Lcom/callapp/framework/phone/Phone;

    .line 535
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 5

    .line 166
    invoke-static {}, Lcom/google/i18n/phonenumbers/i;->a()Lcom/google/i18n/phonenumbers/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getPhoneNumber()Lcom/google/i18n/phonenumbers/k$a;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 1092
    iget-object v3, v0, Lcom/google/i18n/phonenumbers/i;->b:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v3, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/google/i18n/phonenumbers/k$a;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    move-result-object v3

    .line 1093
    invoke-static {v3}, Lcom/google/i18n/phonenumbers/i;->a(Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_0

    .line 2074
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 2076
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 2078
    iget-object v0, v0, Lcom/google/i18n/phonenumbers/i;->a:Lcom/google/i18n/phonenumbers/b/f;

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/google/i18n/phonenumbers/b/f;->a(Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v4
.end method

.method public getCountryCode()I
    .locals 1

    .line 277
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getPhoneNumber()Lcom/google/i18n/phonenumbers/k$a;

    move-result-object v0

    .line 3047
    iget v0, v0, Lcom/google/i18n/phonenumbers/k$a;->a:I

    return v0
.end method

.method public getCustomType()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getLineType()Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;
    .locals 2

    .line 162
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getPhoneNumber()Lcom/google/i18n/phonenumbers/k$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/google/i18n/phonenumbers/k$a;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    move-result-object v0

    return-object v0
.end method

.method public getLocalNumberWithoutAreaCode()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/callapp/framework/phone/Phone;->f()V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getNDC()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->r:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/callapp/framework/phone/Phone;->f()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalNumber()J
    .locals 2

    .line 284
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getPhoneNumber()Lcom/google/i18n/phonenumbers/k$a;

    move-result-object v0

    .line 3063
    iget-wide v0, v0, Lcom/google/i18n/phonenumbers/k$a;->b:J

    return-wide v0
.end method

.method public getPhoneInfo()Ljava/lang/String;
    .locals 5

    .line 171
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getCustomType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getCustomType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getLineType()Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    move-result-object v0

    .line 176
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->FIXED_LINE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->VOIP:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 177
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    .line 178
    invoke-static {v1, v2}, Lcom/callapp/common/util/RegexUtils;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    :goto_1
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getCarrier()Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ", "

    if-eqz v3, :cond_4

    .line 183
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    :cond_4
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getType()Lcom/callapp/framework/phone/PhoneType;

    move-result-object v2

    .line 190
    sget-object v3, Lcom/callapp/framework/phone/PhoneType;->OTHER:Lcom/callapp/framework/phone/PhoneType;

    if-eq v2, v3, :cond_7

    sget-object v3, Lcom/callapp/framework/phone/PhoneType;->MOBILE:Lcom/callapp/framework/phone/PhoneType;

    if-ne v2, v3, :cond_5

    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    if-eq v0, v3, :cond_7

    .line 191
    :cond_5
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/callapp/framework/phone/PhoneType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    return-object v1
.end method

.method public getPhoneNumber()Lcom/google/i18n/phonenumbers/k$a;
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->j:Lcom/google/i18n/phonenumbers/k$a;

    if-nez v0, :cond_0

    .line 570
    monitor-enter p0

    .line 571
    :try_start_0
    sget-object v0, Lcom/callapp/framework/phone/Phone;->a:Lcom/callapp/framework/phone/CountryRegionProvider;

    invoke-interface {v0}, Lcom/callapp/framework/phone/CountryRegionProvider;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/callapp/framework/phone/Phone;->d(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/framework/phone/Phone;->j:Lcom/google/i18n/phonenumbers/k$a;

    .line 572
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 575
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->j:Lcom/google/i18n/phonenumbers/k$a;

    return-object v0
.end method

.method public getRawNumber()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getRegionCode()Ljava/lang/String;
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->q:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 268
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getPhoneNumber()Lcom/google/i18n/phonenumbers/k$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/framework/phone/Phone;->q:Ljava/lang/String;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/callapp/framework/phone/PhoneType;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->c:Lcom/callapp/framework/phone/PhoneType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 540
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNotEmpty()Z
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 5

    .line 216
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getNationalNumber()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isValidForSearch()Z
    .locals 6

    .line 223
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->t:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->u:Lcom/callapp/framework/util/SerializableLock;

    monitor-enter v0

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/callapp/framework/phone/Phone;->t:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getNationalNumber()J

    move-result-wide v1

    const-wide/32 v3, 0x1869f

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    iget-object v1, p0, Lcom/callapp/framework/phone/Phone;->h:Ljava/lang/String;

    const-string v2, "000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/callapp/framework/phone/Phone;->h:Ljava/lang/String;

    const-string v2, "+000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getPhoneNumber()Lcom/google/i18n/phonenumbers/k$a;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/callapp/framework/phone/Phone;->b(Lcom/google/i18n/phonenumbers/k$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/framework/phone/Phone;->t:Ljava/lang/Boolean;

    .line 228
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 231
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/callapp/framework/phone/Phone;->t:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setCustomType(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/callapp/framework/phone/Phone;->p:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 545
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
