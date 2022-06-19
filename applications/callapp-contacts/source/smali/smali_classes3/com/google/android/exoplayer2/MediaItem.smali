.class public final Lcom/google/android/exoplayer2/MediaItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/MediaItem$b;,
        Lcom/google/android/exoplayer2/MediaItem$d;,
        Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;,
        Lcom/google/android/exoplayer2/MediaItem$c;,
        Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;,
        Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;,
        Lcom/google/android/exoplayer2/MediaItem$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/android/exoplayer2/MediaItem$c;

.field public final c:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

.field public final d:Lcom/google/android/exoplayer2/t;

.field public final e:Lcom/google/android/exoplayer2/MediaItem$b;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$b;Lcom/google/android/exoplayer2/MediaItem$c;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;Lcom/google/android/exoplayer2/t;)V
    .locals 0

    .line 1120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1121
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem;->a:Ljava/lang/String;

    .line 1122
    iput-object p3, p0, Lcom/google/android/exoplayer2/MediaItem;->b:Lcom/google/android/exoplayer2/MediaItem$c;

    .line 1123
    iput-object p4, p0, Lcom/google/android/exoplayer2/MediaItem;->c:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 1124
    iput-object p5, p0, Lcom/google/android/exoplayer2/MediaItem;->d:Lcom/google/android/exoplayer2/t;

    .line 1125
    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaItem;->e:Lcom/google/android/exoplayer2/MediaItem$b;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$b;Lcom/google/android/exoplayer2/MediaItem$c;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;Lcom/google/android/exoplayer2/t;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/MediaItem;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$b;Lcom/google/android/exoplayer2/MediaItem$c;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;Lcom/google/android/exoplayer2/t;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/exoplayer2/MediaItem$a;
    .locals 2

    .line 1130
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/MediaItem$a;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/MediaItem$1;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1138
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/MediaItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1142
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/MediaItem;

    .line 1144
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->e:Lcom/google/android/exoplayer2/MediaItem$b;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem;->e:Lcom/google/android/exoplayer2/MediaItem$b;

    .line 1145
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/MediaItem$b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->b:Lcom/google/android/exoplayer2/MediaItem$c;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem;->b:Lcom/google/android/exoplayer2/MediaItem$c;

    .line 1146
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->c:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem;->c:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 1147
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->d:Lcom/google/android/exoplayer2/t;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem;->d:Lcom/google/android/exoplayer2/t;

    .line 1148
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 1153
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1154
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->b:Lcom/google/android/exoplayer2/MediaItem$c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$c;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1155
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->c:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1156
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->e:Lcom/google/android/exoplayer2/MediaItem$b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$b;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1157
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->d:Lcom/google/android/exoplayer2/t;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/t;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
