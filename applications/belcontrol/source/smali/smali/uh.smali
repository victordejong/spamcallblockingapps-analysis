.class public final Luh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luh$b;
    }
.end annotation


# static fields
.field public static final e:Luh;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public d:Landroid/media/AudioAttributes;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Luh$b;

    invoke-direct {v0}, Luh$b;-><init>()V

    invoke-virtual {v0}, Luh$b;->a()Luh;

    move-result-object v0

    sput-object v0, Luh;->e:Luh;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Luh;->a:I

    iput p2, p0, Luh;->b:I

    iput p3, p0, Luh;->c:I

    return-void
.end method

.method public synthetic constructor <init>(IIILuh$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Luh;-><init>(III)V

    return-void
.end method


# virtual methods
.method public a()Landroid/media/AudioAttributes;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Luh;->d:Landroid/media/AudioAttributes;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v1, p0, Luh;->a:I

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Luh;->b:I

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Luh;->c:I

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Luh;->d:Landroid/media/AudioAttributes;

    :cond_0
    iget-object v0, p0, Luh;->d:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Luh;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Luh;

    iget v2, p0, Luh;->a:I

    iget v3, p1, Luh;->a:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Luh;->b:I

    iget v3, p1, Luh;->b:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Luh;->c:I

    iget p1, p1, Luh;->c:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Luh;->a:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Luh;->b:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Luh;->c:I

    add-int/2addr v1, v0

    return v1
.end method
