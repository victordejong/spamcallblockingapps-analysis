.class public final Lag$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lfh$b;

.field public b:Z


# direct methods
.method public constructor <init>(Lfh$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lag$a;->a:Lfh$b;

    return-void
.end method


# virtual methods
.method public a(Lag$b;)V
    .locals 1

    iget-boolean v0, p0, Lag$a;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lag$a;->a:Lfh$b;

    invoke-interface {p1, v0}, Lag$b;->a(Lfh$b;)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Lag$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lag$a;->a:Lfh$b;

    check-cast p1, Lag$a;

    iget-object p1, p1, Lag$a;->a:Lfh$b;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lag$a;->a:Lfh$b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
