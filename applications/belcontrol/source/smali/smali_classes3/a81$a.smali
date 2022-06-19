.class public La81$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La81;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Li91;


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La81$a;->d:Li91;

    iput-object p3, p0, La81$a;->b:Ljava/lang/String;

    iput p4, p0, La81$a;->c:I

    iput-wide p1, p0, La81$a;->a:J

    return-void
.end method


# virtual methods
.method public a()Li91;
    .locals 1

    iget-object v0, p0, La81$a;->d:Li91;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, La81$a;->b:Ljava/lang/String;

    invoke-static {v0}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, La81$a;->d:Li91;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li91;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, La81$a;->b:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method
