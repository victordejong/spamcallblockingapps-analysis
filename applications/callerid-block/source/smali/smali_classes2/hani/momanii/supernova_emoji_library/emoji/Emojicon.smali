.class public Lhani/momanii/supernova_emoji_library/emoji/Emojicon;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lhani/momanii/supernova_emoji_library/emoji/Emojicon;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:I

.field private c:C

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lhani/momanii/supernova_emoji_library/emoji/Emojicon$a;

    invoke-direct {v0}, Lhani/momanii/supernova_emoji_library/emoji/Emojicon$a;-><init>()V

    sput-object v0, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;->c:C

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(C)Lhani/momanii/supernova_emoji_library/emoji/Emojicon;
    .locals 1

    new-instance v0, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;

    invoke-direct {v0}, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;-><init>()V

    invoke-static {p0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lhani/momanii/supernova_emoji_library/emoji/Emojicon;
    .locals 1

    new-instance v0, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;

    invoke-direct {v0}, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;-><init>()V

    iput-object p0, v0, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static c(I)Lhani/momanii/supernova_emoji_library/emoji/Emojicon;
    .locals 1

    new-instance v0, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;

    invoke-direct {v0}, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;-><init>()V

    invoke-static {p0}, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;->e(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static final e(I)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;->d:Ljava/lang/String;

    check-cast p1, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;

    iget-object p1, p1, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-char p2, p0, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;->c:C

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
