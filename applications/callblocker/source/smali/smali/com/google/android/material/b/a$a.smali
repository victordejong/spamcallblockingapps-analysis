.class public final Lcom/google/android/material/b/a$a;
.super Ljava/lang/Object;
.source "BadgeDrawable.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/material/b/a$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/CharSequence;

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/google/android/material/b/a$a$1;

    invoke-direct {v0}, Lcom/google/android/material/b/a$a$1;-><init>()V

    sput-object v0, Lcom/google/android/material/b/a$a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/material/b/a$a;->c:I

    .line 184
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/b/a$a;->d:I

    .line 193
    new-instance v0, Lcom/google/android/material/n/d;

    sget v1, Lcom/google/android/material/a$k;->TextAppearance_MaterialComponents_Badge:I

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/n/d;-><init>(Landroid/content/Context;I)V

    .line 195
    iget-object v0, v0, Lcom/google/android/material/n/d;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/b/a$a;->b:I

    .line 196
    sget v0, Lcom/google/android/material/a$j;->mtrl_badge_numberless_content_description:I

    .line 197
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/b/a$a;->f:Ljava/lang/CharSequence;

    .line 198
    sget v0, Lcom/google/android/material/a$i;->mtrl_badge_content_description:I

    iput v0, p0, Lcom/google/android/material/b/a$a;->g:I

    .line 199
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/material/b/a$a;->c:I

    .line 184
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/b/a$a;->d:I

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/b/a$a;->a:I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/b/a$a;->b:I

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/b/a$a;->c:I

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/b/a$a;->d:I

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/b/a$a;->e:I

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/b/a$a;->f:Ljava/lang/CharSequence;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/b/a$a;->g:I

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/b/a$a;->h:I

    .line 210
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/b/a$a;)I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/google/android/material/b/a$a;->e:I

    return v0
.end method

.method static synthetic a(Lcom/google/android/material/b/a$a;I)I
    .locals 0

    .prologue
    .line 179
    iput p1, p0, Lcom/google/android/material/b/a$a;->a:I

    return p1
.end method

.method static synthetic b(Lcom/google/android/material/b/a$a;)I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/google/android/material/b/a$a;->d:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/material/b/a$a;I)I
    .locals 0

    .prologue
    .line 179
    iput p1, p0, Lcom/google/android/material/b/a$a;->b:I

    return p1
.end method

.method static synthetic c(Lcom/google/android/material/b/a$a;)I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/google/android/material/b/a$a;->a:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/material/b/a$a;I)I
    .locals 0

    .prologue
    .line 179
    iput p1, p0, Lcom/google/android/material/b/a$a;->d:I

    return p1
.end method

.method static synthetic d(Lcom/google/android/material/b/a$a;)I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/google/android/material/b/a$a;->b:I

    return v0
.end method

.method static synthetic d(Lcom/google/android/material/b/a$a;I)I
    .locals 0

    .prologue
    .line 179
    iput p1, p0, Lcom/google/android/material/b/a$a;->e:I

    return p1
.end method

.method static synthetic e(Lcom/google/android/material/b/a$a;)I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/google/android/material/b/a$a;->h:I

    return v0
.end method

.method static synthetic e(Lcom/google/android/material/b/a$a;I)I
    .locals 0

    .prologue
    .line 179
    iput p1, p0, Lcom/google/android/material/b/a$a;->h:I

    return p1
.end method

.method static synthetic f(Lcom/google/android/material/b/a$a;)I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/google/android/material/b/a$a;->c:I

    return v0
.end method

.method static synthetic f(Lcom/google/android/material/b/a$a;I)I
    .locals 0

    .prologue
    .line 179
    iput p1, p0, Lcom/google/android/material/b/a$a;->c:I

    return p1
.end method

.method static synthetic g(Lcom/google/android/material/b/a$a;)I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/google/android/material/b/a$a;->g:I

    return v0
.end method

.method static synthetic h(Lcom/google/android/material/b/a$a;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/material/b/a$a;->f:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/google/android/material/b/a$a;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget v0, p0, Lcom/google/android/material/b/a$a;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget v0, p0, Lcom/google/android/material/b/a$a;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget v0, p0, Lcom/google/android/material/b/a$a;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget v0, p0, Lcom/google/android/material/b/a$a;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget-object v0, p0, Lcom/google/android/material/b/a$a;->f:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget v0, p0, Lcom/google/android/material/b/a$a;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget v0, p0, Lcom/google/android/material/b/a$a;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    return-void
.end method
