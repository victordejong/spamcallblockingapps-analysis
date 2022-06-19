.class public final Lorg/mistergroup/shouldianswer/model/NumberCaption;
.super Ljava/lang/Object;
.source "NumberCaption.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/model/NumberCaption$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mistergroup/shouldianswer/model/NumberCaption;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Lorg/mistergroup/shouldianswer/model/NumberCaption$a;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberCaption$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/model/NumberCaption$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->a:Lorg/mistergroup/shouldianswer/model/NumberCaption$a;

    .line 63
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberCaption$b;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/model/NumberCaption$b;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->c:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->d:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->e:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->f:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->c:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->d:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->e:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->f:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->b:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->c:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->d:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->e:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->f:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->g:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lkotlin/e/b/e;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/model/NumberCaption;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 18
    iget v0, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->b:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    .line 18
    iput p1, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->b:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->c:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->g:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->d:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->e:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->f:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->g:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget p2, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-boolean p2, p0, Lorg/mistergroup/shouldianswer/model/NumberCaption;->g:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
