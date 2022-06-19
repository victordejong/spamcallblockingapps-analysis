.class public Lyh0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyh0$b;,
        Lyh0$a;
    }
.end annotation


# static fields
.field public static final c:Lyh0;

.field public static final d:Lyh0;


# instance fields
.field public a:Lyh0$a;

.field public b:Lyh0$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lyh0;

    sget-object v1, Lyh0$a;->a:Lyh0$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyh0;-><init>(Lyh0$a;Lyh0$b;)V

    sput-object v0, Lyh0;->c:Lyh0;

    new-instance v0, Lyh0;

    sget-object v1, Lyh0$a;->g:Lyh0$a;

    sget-object v2, Lyh0$b;->a:Lyh0$b;

    invoke-direct {v0, v1, v2}, Lyh0;-><init>(Lyh0$a;Lyh0$b;)V

    sput-object v0, Lyh0;->d:Lyh0;

    sget-object v0, Lyh0$a;->b:Lyh0$a;

    sget-object v0, Lyh0$a;->l:Lyh0$a;

    sget-object v0, Lyh0$a;->c:Lyh0$a;

    sget-object v0, Lyh0$a;->k:Lyh0$a;

    sget-object v0, Lyh0$b;->b:Lyh0$b;

    return-void
.end method

.method public constructor <init>(Lyh0$a;Lyh0$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyh0;->a:Lyh0$a;

    iput-object p2, p0, Lyh0;->b:Lyh0$b;

    return-void
.end method


# virtual methods
.method public a()Lyh0$a;
    .locals 1

    iget-object v0, p0, Lyh0;->a:Lyh0$a;

    return-object v0
.end method

.method public b()Lyh0$b;
    .locals 1

    iget-object v0, p0, Lyh0;->b:Lyh0$b;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    const-class v2, Lyh0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lyh0;

    iget-object v2, p0, Lyh0;->a:Lyh0$a;

    iget-object v3, p1, Lyh0;->a:Lyh0$a;

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lyh0;->b:Lyh0$b;

    iget-object p1, p1, Lyh0;->b:Lyh0$b;

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method
