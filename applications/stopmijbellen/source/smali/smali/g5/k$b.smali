.class public final Lg5/k$b;
.super Lg5/v$d$d$a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg5/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Lg5/v$d$d$a$b;

.field public b:Lg5/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg5/w<",
            "Lg5/v$b;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lg5/v$d$d$a;Lg5/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg5/v$d$d$a$a;-><init>()V

    .line 2
    check-cast p1, Lg5/k;

    .line 3
    iget-object p2, p1, Lg5/k;->a:Lg5/v$d$d$a$b;

    .line 4
    iput-object p2, p0, Lg5/k$b;->a:Lg5/v$d$d$a$b;

    .line 5
    iget-object p2, p1, Lg5/k;->b:Lg5/w;

    .line 6
    iput-object p2, p0, Lg5/k$b;->b:Lg5/w;

    .line 7
    iget-object p2, p1, Lg5/k;->c:Ljava/lang/Boolean;

    .line 8
    iput-object p2, p0, Lg5/k$b;->c:Ljava/lang/Boolean;

    .line 9
    iget p1, p1, Lg5/k;->d:I

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lg5/k$b;->d:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public a()Lg5/v$d$d$a;
    .locals 8

    .line 1
    iget-object v0, p0, Lg5/k$b;->a:Lg5/v$d$d$a$b;

    if-nez v0, :cond_0

    const-string v0, " execution"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    iget-object v1, p0, Lg5/k$b;->d:Ljava/lang/Integer;

    if-nez v1, :cond_1

    const-string v1, " uiOrientation"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    new-instance v0, Lg5/k;

    iget-object v3, p0, Lg5/k$b;->a:Lg5/v$d$d$a$b;

    iget-object v4, p0, Lg5/k$b;->b:Lg5/w;

    iget-object v5, p0, Lg5/k$b;->c:Ljava/lang/Boolean;

    iget-object v1, p0, Lg5/k$b;->d:Ljava/lang/Integer;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lg5/k;-><init>(Lg5/v$d$d$a$b;Lg5/w;Ljava/lang/Boolean;ILg5/k$a;)V

    return-object v0

    .line 7
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
