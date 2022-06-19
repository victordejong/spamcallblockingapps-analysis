.class public final Lcom/google/i18n/phonenumbers/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/google/i18n/phonenumbers/i;


# instance fields
.field public a:Lcom/google/i18n/phonenumbers/b/f;

.field public final b:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i;->a:Lcom/google/i18n/phonenumbers/b/f;

    .line 37
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i;->b:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .line 41
    new-instance v0, Lcom/google/i18n/phonenumbers/b/f;

    invoke-direct {v0, p1}, Lcom/google/i18n/phonenumbers/b/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i;->a:Lcom/google/i18n/phonenumbers/b/f;

    return-void
.end method

.method public static declared-synchronized a()Lcom/google/i18n/phonenumbers/i;
    .locals 3

    const-class v0, Lcom/google/i18n/phonenumbers/i;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/google/i18n/phonenumbers/i;->c:Lcom/google/i18n/phonenumbers/i;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/google/i18n/phonenumbers/i;

    const-string v2, "/com/google/i18n/phonenumbers/carrier/data/"

    invoke-direct {v1, v2}, Lcom/google/i18n/phonenumbers/i;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/google/i18n/phonenumbers/i;->c:Lcom/google/i18n/phonenumbers/i;

    .line 56
    :cond_0
    sget-object v1, Lcom/google/i18n/phonenumbers/i;->c:Lcom/google/i18n/phonenumbers/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;)Z
    .locals 1

    .line 120
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->FIXED_LINE_OR_MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->PAGER:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
