.class public Lcom/android/billingclient/api/e;
.super Ljava/lang/Object;
.source "BillingFlowParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/e$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/android/billingclient/api/h;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/android/billingclient/api/e;->g:I

    return-void
.end method

.method static synthetic a(Lcom/android/billingclient/api/e;I)I
    .locals 0

    .line 18
    iput p1, p0, Lcom/android/billingclient/api/e;->g:I

    return p1
.end method

.method static synthetic a(Lcom/android/billingclient/api/e;Lcom/android/billingclient/api/h;)Lcom/android/billingclient/api/h;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/android/billingclient/api/e;->c:Lcom/android/billingclient/api/h;

    return-object p1
.end method

.method static synthetic a(Lcom/android/billingclient/api/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/android/billingclient/api/e;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/android/billingclient/api/e;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/android/billingclient/api/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/android/billingclient/api/e;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/android/billingclient/api/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/android/billingclient/api/e;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/android/billingclient/api/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/android/billingclient/api/e;->e:Ljava/lang/String;

    return-object p1
.end method

.method public static i()Lcom/android/billingclient/api/e$a;
    .locals 2

    .line 142
    new-instance v0, Lcom/android/billingclient/api/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/e$a;-><init>(Lcom/android/billingclient/api/e$1;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/billingclient/api/e;->c:Lcom/android/billingclient/api/h;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/android/billingclient/api/h;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/billingclient/api/e;->c:Lcom/android/billingclient/api/h;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/android/billingclient/api/h;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/android/billingclient/api/h;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/billingclient/api/e;->c:Lcom/android/billingclient/api/h;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/billingclient/api/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/billingclient/api/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/android/billingclient/api/e;->f:Z

    return v0
.end method

.method public g()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/android/billingclient/api/e;->g:I

    return v0
.end method

.method public h()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/android/billingclient/api/e;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/billingclient/api/e;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/billingclient/api/e;->g:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
