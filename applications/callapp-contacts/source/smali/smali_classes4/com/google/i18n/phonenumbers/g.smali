.class public final Lcom/google/i18n/phonenumbers/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/i18n/phonenumbers/k$a;


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/google/i18n/phonenumbers/k$a;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 76
    iput p1, p0, Lcom/google/i18n/phonenumbers/g;->a:I

    .line 77
    iput-object p2, p0, Lcom/google/i18n/phonenumbers/g;->b:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/google/i18n/phonenumbers/g;->c:Lcom/google/i18n/phonenumbers/k$a;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 74
    throw p1

    .line 71
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Start index must be >= 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 93
    iget v0, p0, Lcom/google/i18n/phonenumbers/g;->a:I

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/g;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 111
    :cond_0
    instance-of v1, p1, Lcom/google/i18n/phonenumbers/g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 114
    :cond_1
    check-cast p1, Lcom/google/i18n/phonenumbers/g;

    .line 115
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/g;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/i18n/phonenumbers/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/i18n/phonenumbers/g;->a:I

    iget v3, p1, Lcom/google/i18n/phonenumbers/g;->a:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/g;->c:Lcom/google/i18n/phonenumbers/k$a;

    iget-object p1, p1, Lcom/google/i18n/phonenumbers/g;->c:Lcom/google/i18n/phonenumbers/k$a;

    .line 116
    invoke-virtual {v1, p1}, Lcom/google/i18n/phonenumbers/k$a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 103
    iget v1, p0, Lcom/google/i18n/phonenumbers/g;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/g;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/g;->c:Lcom/google/i18n/phonenumbers/k$a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PhoneNumberMatch ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1088
    iget v1, p0, Lcom/google/i18n/phonenumbers/g;->a:I

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/g;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
