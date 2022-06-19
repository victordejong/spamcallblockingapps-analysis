.class public final Lcom/google/i18n/phonenumbers/j$a$a;
.super Lcom/google/i18n/phonenumbers/j$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/j$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/j$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/i18n/phonenumbers/j$a;)Lcom/google/i18n/phonenumbers/j$a$a;
    .locals 2

    .line 52
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p1, Lcom/google/i18n/phonenumbers/j$a;->a:Ljava/lang/String;

    .line 53
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j$a$a;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$a;

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1093
    iget-object v0, p1, Lcom/google/i18n/phonenumbers/j$a;->b:Ljava/lang/String;

    .line 56
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j$a$a;->b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$a;

    :cond_1
    const/4 v0, 0x0

    .line 58
    :goto_0
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j$a;->d()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 59
    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/j$a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/i18n/phonenumbers/j$a$a;->c(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$a;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j$a;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1123
    iget-object v0, p1, Lcom/google/i18n/phonenumbers/j$a;->c:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j$a$a;->d(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$a;

    .line 1152
    :cond_3
    iget-boolean v0, p1, Lcom/google/i18n/phonenumbers/j$a;->e:Z

    if-eqz v0, :cond_4

    .line 1154
    iget-object v0, p1, Lcom/google/i18n/phonenumbers/j$a;->f:Ljava/lang/String;

    .line 65
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j$a$a;->e(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$a;

    .line 67
    :cond_4
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j$a;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2141
    iget-boolean p1, p1, Lcom/google/i18n/phonenumbers/j$a;->d:Z

    .line 68
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/j$a$a;->a(Z)Lcom/google/i18n/phonenumbers/j$a;

    :cond_5
    return-object p0
.end method
