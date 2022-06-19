.class public final Lcom/kedlin/cca/core/call/Call;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/kedlin/cca/core/call/Call;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Li91;

.field public b:I

.field public c:Z

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kedlin/cca/core/call/Call$a;

    invoke-direct {v0}, Lcom/kedlin/cca/core/call/Call$a;-><init>()V

    sput-object v0, Lcom/kedlin/cca/core/call/Call;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kedlin/cca/core/call/Call;->c:Z

    iput-boolean v0, p0, Lcom/kedlin/cca/core/call/Call;->d:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/kedlin/cca/core/call/Call;->d:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Li91;

    iput-object v1, p0, Lcom/kedlin/cca/core/call/Call;->a:Li91;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kedlin/cca/core/call/Call;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/kedlin/cca/core/call/Call;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/kedlin/cca/core/call/Call$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kedlin/cca/core/call/Call;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kedlin/cca/core/call/Call;->c:Z

    iput-boolean v0, p0, Lcom/kedlin/cca/core/call/Call;->d:Z

    iput p2, p0, Lcom/kedlin/cca/core/call/Call;->b:I

    new-instance v0, Li91;

    invoke-direct {v0, p1, p2}, Li91;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/kedlin/cca/core/call/Call;->a:Li91;

    return-void
.end method


# virtual methods
.method public a(Lq71$a;)V
    .locals 3

    invoke-virtual {p1}, Lq71$a;->d()Lq71$a;

    move-result-object p1

    sget-object v0, Lr71$a;->Y:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lq71$a;->f:Lq71$a;

    :cond_0
    sget-object v0, Lcom/kedlin/cca/core/call/Call$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lp71;->c()Ln71;

    move-result-object p1

    invoke-interface {p1, p0}, Ln71;->b(Lcom/kedlin/cca/core/call/Call;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lp71;->c()Ln71;

    move-result-object p1

    invoke-interface {p1, p0}, Ln71;->c(Lcom/kedlin/cca/core/call/Call;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lfa1$e;->f()I

    move-result p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_4

    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_4
    :goto_0
    invoke-static {}, Lfa1$e;->f()I

    move-result v1

    if-eq p1, v1, :cond_5

    invoke-static {}, Lfa1$e;->j()I

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kedlin/cca/core/call/Call;->c:Z

    return-void

    :cond_5
    invoke-static {}, Lp71;->c()Ln71;

    move-result-object p1

    invoke-interface {p1, p0}, Ln71;->e(Lcom/kedlin/cca/core/call/Call;)V

    iput-boolean v0, p0, Lcom/kedlin/cca/core/call/Call;->c:Z

    :goto_1
    return-void
.end method

.method public b()Li91;
    .locals 1

    iget-object v0, p0, Lcom/kedlin/cca/core/call/Call;->a:Li91;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/kedlin/cca/core/call/Call;->b:I

    return v0
.end method

.method public d()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    sget-object v0, Lm91$c;->n:Lm91$c;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lm91;->a(Ljava/lang/Object;Lm91$c;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/kedlin/cca/core/call/Call;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lp71;->c()Ln71;

    move-result-object v0

    invoke-interface {v0, p0}, Ln71;->c(Lcom/kedlin/cca/core/call/Call;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kedlin/cca/core/call/Call;->c:Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kedlin/cca/core/call/Call;->d:Z

    return v0
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/kedlin/cca/core/call/Call;->d:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kedlin/cca/core/call/Call;->a:Li91;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/kedlin/cca/core/call/Call;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-boolean p2, p0, Lcom/kedlin/cca/core/call/Call;->d:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/kedlin/cca/core/call/Call;->a:Li91;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget p2, p0, Lcom/kedlin/cca/core/call/Call;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/kedlin/cca/core/call/Call;->c:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
