.class final enum Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a$2;
.super Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 549
    invoke-direct {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;-><init>(Ljava/lang/String;ILcom/google/i18n/phonenumbers/PhoneNumberUtil$1;)V

    return-void
.end method


# virtual methods
.method final verify(Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/h;)Z
    .locals 0

    .line 556
    invoke-virtual {p3, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/i18n/phonenumbers/k$a;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 557
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/google/i18n/phonenumbers/h;->a(Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 560
    :cond_0
    invoke-static {p1, p3}, Lcom/google/i18n/phonenumbers/h;->a(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
