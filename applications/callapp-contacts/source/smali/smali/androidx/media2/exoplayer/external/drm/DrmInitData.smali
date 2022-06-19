.class public final Landroidx/media2/exoplayer/external/drm/DrmInitData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/util/Comparator<",
        "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hashCode:I

.field public final schemeDataCount:I

.field private final schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

.field public final schemeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 255
    new-instance v0, Landroidx/media2/exoplayer/external/drm/DrmInitData$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/drm/DrmInitData$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    .line 149
    sget-object v0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 150
    array-length p1, p1

    iput p1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDataCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 115
    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    invoke-direct {p0, p1, v0, p2}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;Z[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;Z[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 137
    invoke-virtual {p3}, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 139
    :cond_0
    iput-object p3, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 140
    array-length p1, p3

    iput p1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDataCount:I

    .line 143
    invoke-static {p3, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V
    .locals 1

    const/4 v0, 0x1

    .line 130
    invoke-direct {p0, p1, v0, p2}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;Z[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 107
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;Z[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    return-void
.end method

.method public varargs constructor <init>([Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, v0, p1}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    return-void
.end method

.method private static containsSchemeDataWithUuid(Ljava/util/ArrayList;ILjava/util/UUID;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;",
            ">;I",
            "Ljava/util/UUID;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 275
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->access$000(Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static createSessionCreationData(Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .locals 8

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 67
    iget-object v3, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    .line 68
    iget-object p0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    array-length v4, p0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, p0, v5

    .line 69
    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->hasData()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 70
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :cond_2
    if-eqz p1, :cond_5

    if-nez v3, :cond_3

    .line 77
    iget-object p0, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    move-object v3, p0

    .line 79
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 80
    iget-object p1, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    array-length v4, p1

    :goto_1
    if-ge v1, v4, :cond_5

    aget-object v5, p1, v1

    .line 81
    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->hasData()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v5}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->access$000(Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)Ljava/util/UUID;

    move-result-object v6

    invoke-static {v0, p0, v6}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->containsSchemeDataWithUuid(Ljava/util/ArrayList;ILjava/util/UUID;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 82
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    return-object v2

    :cond_6
    new-instance p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-direct {p0, v3, v0}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public final compare(Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)I
    .locals 2

    .line 238
    sget-object v0, Landroidx/media2/exoplayer/external/c;->a:Ljava/util/UUID;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->access$000(Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Landroidx/media2/exoplayer/external/c;->a:Ljava/util/UUID;

    invoke-static {p2}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->access$000(Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 239
    :cond_1
    invoke-static {p1}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->access$000(Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)Ljava/util/UUID;

    move-result-object p1

    invoke-static {p2}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->access$000(Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 40
    check-cast p1, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    check-cast p2, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->compare(Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)I

    move-result p1

    return p1
.end method

.method public final copyWithSchemeType(Ljava/lang/String;)Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .locals 3

    .line 188
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 191
    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    invoke-direct {v0, p1, v1, v2}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;Z[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 228
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 231
    :cond_1
    check-cast p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 232
    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 233
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final get(I)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .locals 1

    .line 178
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final get(Ljava/util/UUID;)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 164
    invoke-virtual {v3, p1}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final hashCode()I
    .locals 2

    .line 215
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->hashCode:I

    if-nez v0, :cond_1

    .line 216
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 217
    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 218
    iput v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->hashCode:I

    .line 220
    :cond_1
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->hashCode:I

    return v0
.end method

.method public final merge(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .locals 2

    .line 203
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 206
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 203
    :goto_1
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 207
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    .line 208
    :goto_2
    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 209
    invoke-static {v1, p1}, Landroidx/media2/exoplayer/external/util/ac;->a([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 210
    new-instance v1, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-direct {v1, v0, p1}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    return-object v1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 251
    iget-object p2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget-object p2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
