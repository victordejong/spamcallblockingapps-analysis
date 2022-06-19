.class public final Ldz$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ldz;

.field public final b:Ldz$b;

.field public c:Lcz;

.field public d:I


# direct methods
.method public constructor <init>(Ldz;Ldz$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldz$c;->a:Ldz;

    iput-object p2, p0, Ldz$c;->b:Ldz$b;

    sget-object p1, Lcz;->c:Lcz;

    iput-object p1, p0, Ldz$c;->c:Lcz;

    return-void
.end method


# virtual methods
.method public a(Ldz$i;ILdz$i;I)Z
    .locals 2

    iget v0, p0, Ldz$c;->d:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Ldz$c;->c:Lcz;

    invoke-virtual {p1, v0}, Ldz$i;->D(Lcz;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ldz;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ldz$i;->v()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x106

    if-ne p2, p1, :cond_1

    const/4 p1, 0x3

    if-ne p4, p1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ldz$i;->v()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v1
.end method
