.class public final Landroidx/media2/exoplayer/external/source/hls/playlist/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/u$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/hls/playlist/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/upstream/u$a<",
        "Landroidx/media2/exoplayer/external/source/hls/playlist/g;",
        ">;"
    }
.end annotation


# static fields
.field private static final A:Ljava/util/regex/Pattern;

.field private static final B:Ljava/util/regex/Pattern;

.field private static final C:Ljava/util/regex/Pattern;

.field private static final D:Ljava/util/regex/Pattern;

.field private static final E:Ljava/util/regex/Pattern;

.field private static final F:Ljava/util/regex/Pattern;

.field private static final G:Ljava/util/regex/Pattern;

.field private static final H:Ljava/util/regex/Pattern;

.field private static final I:Ljava/util/regex/Pattern;

.field private static final J:Ljava/util/regex/Pattern;

.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/regex/Pattern;

.field private static final h:Ljava/util/regex/Pattern;

.field private static final i:Ljava/util/regex/Pattern;

.field private static final j:Ljava/util/regex/Pattern;

.field private static final k:Ljava/util/regex/Pattern;

.field private static final l:Ljava/util/regex/Pattern;

.field private static final m:Ljava/util/regex/Pattern;

.field private static final n:Ljava/util/regex/Pattern;

.field private static final o:Ljava/util/regex/Pattern;

.field private static final p:Ljava/util/regex/Pattern;

.field private static final q:Ljava/util/regex/Pattern;

.field private static final r:Ljava/util/regex/Pattern;

.field private static final s:Ljava/util/regex/Pattern;

.field private static final t:Ljava/util/regex/Pattern;

.field private static final u:Ljava/util/regex/Pattern;

.field private static final v:Ljava/util/regex/Pattern;

.field private static final w:Ljava/util/regex/Pattern;

.field private static final x:Ljava/util/regex/Pattern;

.field private static final y:Ljava/util/regex/Pattern;

.field private static final z:Ljava/util/regex/Pattern;


# instance fields
.field private final K:Landroidx/media2/exoplayer/external/source/hls/playlist/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AVERAGE-BANDWIDTH=(\\d+)\\b"

    .line 115
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a:Ljava/util/regex/Pattern;

    const-string v0, "VIDEO=\"(.+?)\""

    .line 116
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->b:Ljava/util/regex/Pattern;

    const-string v0, "AUDIO=\"(.+?)\""

    .line 117
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->c:Ljava/util/regex/Pattern;

    const-string v0, "SUBTITLES=\"(.+?)\""

    .line 118
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->d:Ljava/util/regex/Pattern;

    const-string v0, "CLOSED-CAPTIONS=\"(.+?)\""

    .line 119
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->e:Ljava/util/regex/Pattern;

    const-string v0, "[^-]BANDWIDTH=(\\d+)\\b"

    .line 120
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->f:Ljava/util/regex/Pattern;

    const-string v0, "CHANNELS=\"(.+?)\""

    .line 121
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->g:Ljava/util/regex/Pattern;

    const-string v0, "CODECS=\"(.+?)\""

    .line 122
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->h:Ljava/util/regex/Pattern;

    const-string v0, "RESOLUTION=(\\d+x\\d+)"

    .line 123
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->i:Ljava/util/regex/Pattern;

    const-string v0, "FRAME-RATE=([\\d\\.]+)\\b"

    .line 124
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->j:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-TARGETDURATION:(\\d+)\\b"

    .line 125
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->k:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-VERSION:(\\d+)\\b"

    .line 127
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->l:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-PLAYLIST-TYPE:(.+)\\b"

    .line 128
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->m:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b"

    .line 130
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->n:Ljava/util/regex/Pattern;

    const-string v0, "#EXTINF:([\\d\\.]+)\\b"

    .line 132
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->o:Ljava/util/regex/Pattern;

    const-string v0, "#EXTINF:[\\d\\.]+\\b,(.+)"

    .line 135
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->p:Ljava/util/regex/Pattern;

    const-string v0, "TIME-OFFSET=(-?[\\d\\.]+)\\b"

    .line 136
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->q:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b"

    .line 137
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->r:Ljava/util/regex/Pattern;

    const-string v0, "BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\""

    .line 140
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->s:Ljava/util/regex/Pattern;

    const-string v0, "METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)"

    .line 142
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->t:Ljava/util/regex/Pattern;

    const-string v0, "KEYFORMAT=\"(.+?)\""

    .line 155
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->u:Ljava/util/regex/Pattern;

    const-string v0, "KEYFORMATVERSIONS=\"(.+?)\""

    .line 157
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->v:Ljava/util/regex/Pattern;

    const-string v0, "URI=\"(.+?)\""

    .line 158
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->w:Ljava/util/regex/Pattern;

    const-string v0, "IV=([^,.*]+)"

    .line 159
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->x:Ljava/util/regex/Pattern;

    const-string v0, "TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)"

    .line 160
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->y:Ljava/util/regex/Pattern;

    const-string v0, "LANGUAGE=\"(.+?)\""

    .line 162
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->z:Ljava/util/regex/Pattern;

    const-string v0, "NAME=\"(.+?)\""

    .line 163
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->A:Ljava/util/regex/Pattern;

    const-string v0, "GROUP-ID=\"(.+?)\""

    .line 164
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->B:Ljava/util/regex/Pattern;

    const-string v0, "CHARACTERISTICS=\"(.+?)\""

    .line 165
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->C:Ljava/util/regex/Pattern;

    const-string v0, "INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\""

    .line 167
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->D:Ljava/util/regex/Pattern;

    const-string v0, "AUTOSELECT"

    .line 168
    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->E:Ljava/util/regex/Pattern;

    const-string v0, "DEFAULT"

    .line 169
    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->F:Ljava/util/regex/Pattern;

    const-string v0, "FORCED"

    .line 170
    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->G:Ljava/util/regex/Pattern;

    const-string v0, "VALUE=\"(.+?)\""

    .line 171
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->H:Ljava/util/regex/Pattern;

    const-string v0, "IMPORT=\"(.+?)\""

    .line 172
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->I:Ljava/util/regex/Pattern;

    const-string v0, "\\{\\$([a-zA-Z0-9\\-_]+)\\}"

    .line 174
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->J:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 183
    sget-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->a:Landroidx/media2/exoplayer/external/source/hls/playlist/e;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;-><init>(Landroidx/media2/exoplayer/external/source/hls/playlist/e;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/source/hls/playlist/e;)V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->K:Landroidx/media2/exoplayer/external/source/hls/playlist/e;

    return-void
.end method

.method private static a(Ljava/io/BufferedReader;ZI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 257
    invoke-static {p2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/ac;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result p2

    goto :goto_0

    :cond_1
    return p2
.end method

.method private static a(Ljava/lang/String;Ljava/util/regex/Pattern;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 865
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 839
    sget-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->v:Ljava/util/regex/Pattern;

    const-string v1, "1"

    .line 840
    invoke-static {p0, v0, v1, p2}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    .line 841
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x2c

    const-string v5, "video/mp4"

    if-eqz v2, :cond_0

    .line 842
    sget-object p1, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->w:Ljava/util/regex/Pattern;

    invoke-static {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 843
    new-instance p1, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    sget-object p2, Landroidx/media2/exoplayer/external/c;->d:Ljava/util/UUID;

    .line 846
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {p1, p2, v5, p0}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p1

    :cond_0
    const-string v2, "com.widevine"

    .line 847
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 848
    new-instance p1, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    sget-object p2, Landroidx/media2/exoplayer/external/c;->d:Ljava/util/UUID;

    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/ac;->c(Ljava/lang/String;)[B

    move-result-object p0

    const-string v0, "hls"

    invoke-direct {p1, p2, v0, p0}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p1

    :cond_1
    const-string v2, "com.microsoft.playready"

    .line 849
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 850
    sget-object p1, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->w:Ljava/util/regex/Pattern;

    invoke-static {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 851
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 852
    sget-object p1, Landroidx/media2/exoplayer/external/c;->e:Ljava/util/UUID;

    invoke-static {p1, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/j;->a(Ljava/util/UUID;[B)[B

    move-result-object p0

    .line 853
    new-instance p1, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    sget-object p2, Landroidx/media2/exoplayer/external/c;->e:Ljava/util/UUID;

    invoke-direct {p1, p2, v5, p0}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 546
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 547
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;

    .line 548
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;->d:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroidx/media2/exoplayer/external/source/hls/playlist/h$a;Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/hls/playlist/e;
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p1

    .line 265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 266
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 267
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 268
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 269
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 270
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 271
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 272
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 273
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 274
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 281
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/hls/playlist/h$a;->a()Z

    move-result v15

    const/high16 v16, -0x40800000    # -1.0f

    const/16 v17, -0x1

    if-eqz v15, :cond_d

    .line 282
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/hls/playlist/h$a;->b()Ljava/lang/String;

    move-result-object v15

    const-string v10, "#EXT"

    .line 284
    invoke-virtual {v15, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 286
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v10, "#EXT-X-DEFINE"

    .line 289
    invoke-virtual {v15, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 290
    sget-object v10, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->A:Ljava/util/regex/Pattern;

    .line 291
    invoke-static {v15, v10, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->H:Ljava/util/regex/Pattern;

    .line 292
    invoke-static {v15, v9, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 290
    invoke-virtual {v11, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v39, v12

    move/from16 v20, v13

    goto/16 :goto_7

    :cond_1
    const-string v9, "#EXT-X-INDEPENDENT-SEGMENTS"

    .line 293
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v13, 0x1

    goto :goto_0

    :cond_2
    const-string v9, "#EXT-X-MEDIA"

    .line 295
    invoke-virtual {v15, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 298
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v9, "#EXT-X-SESSION-KEY"

    .line 299
    invoke-virtual {v15, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 300
    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->u:Ljava/util/regex/Pattern;

    const-string v10, "identity"

    .line 301
    invoke-static {v15, v9, v10, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 302
    invoke-static {v15, v9, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 304
    sget-object v10, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->t:Ljava/util/regex/Pattern;

    invoke-static {v15, v10, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 305
    invoke-static {v10}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 306
    new-instance v15, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-object/from16 v21, v7

    move/from16 v20, v13

    const/4 v13, 0x1

    new-array v7, v13, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    const/4 v13, 0x0

    aput-object v9, v7, v13

    invoke-direct {v15, v10, v7}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_4
    move-object/from16 v21, v7

    move/from16 v20, v13

    goto/16 :goto_6

    :cond_5
    move-object/from16 v21, v7

    move/from16 v20, v13

    const-string v7, "#EXT-X-STREAM-INF"

    .line 308
    invoke-virtual {v15, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "CLOSED-CAPTIONS=NONE"

    .line 309
    invoke-virtual {v15, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    or-int/2addr v14, v7

    .line 310
    sget-object v7, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->f:Ljava/util/regex/Pattern;

    invoke-static {v15, v7}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v7

    .line 311
    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a:Ljava/util/regex/Pattern;

    const/4 v10, 0x0

    .line 1889
    invoke-static {v15, v9, v10, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 315
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 317
    :cond_6
    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->h:Ljava/util/regex/Pattern;

    .line 2889
    invoke-static {v15, v9, v10, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v26

    .line 318
    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->i:Ljava/util/regex/Pattern;

    .line 3889
    invoke-static {v15, v9, v10, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    const-string v10, "x"

    .line 323
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 324
    aget-object v13, v9, v10

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v13, 0x1

    .line 325
    aget-object v9, v9, v13

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-lez v10, :cond_8

    if-gtz v9, :cond_7

    goto :goto_2

    :cond_7
    move/from16 v17, v9

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v10, -0x1

    :goto_3
    move/from16 v29, v10

    move/from16 v30, v17

    goto :goto_4

    :cond_9
    const/16 v29, -0x1

    const/16 v30, -0x1

    .line 336
    :goto_4
    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->j:Ljava/util/regex/Pattern;

    const/4 v10, 0x0

    .line 4889
    invoke-static {v15, v9, v10, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 339
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    move/from16 v31, v16

    goto :goto_5

    :cond_a
    const/high16 v31, -0x40800000    # -1.0f

    .line 341
    :goto_5
    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->b:Ljava/util/regex/Pattern;

    .line 5889
    invoke-static {v15, v9, v10, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 342
    sget-object v13, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->c:Ljava/util/regex/Pattern;

    .line 6889
    invoke-static {v15, v13, v10, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    move/from16 v19, v14

    .line 343
    sget-object v14, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->d:Ljava/util/regex/Pattern;

    .line 7889
    invoke-static {v15, v14, v10, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v39, v12

    .line 345
    sget-object v12, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->e:Ljava/util/regex/Pattern;

    .line 8889
    invoke-static {v15, v12, v10, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 349
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/hls/playlist/h$a;->b()Ljava/lang/String;

    move-result-object v12

    .line 348
    invoke-static {v12, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    .line 350
    invoke-static {v1, v12}, Landroidx/media2/exoplayer/external/util/ab;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 353
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-string v24, "application/x-mpegURL"

    move/from16 v28, v7

    .line 352
    invoke-static/range {v22 .. v34}, Landroidx/media2/exoplayer/external/Format;->createVideoContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;IIIFLjava/util/List;II)Landroidx/media2/exoplayer/external/Format;

    move-result-object v34

    .line 366
    new-instance v15, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;

    move-object/from16 v32, v15

    move-object/from16 v33, v12

    move-object/from16 v35, v9

    move-object/from16 v36, v13

    move-object/from16 v37, v14

    move-object/from16 v38, v10

    invoke-direct/range {v32 .. v38}, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    if-nez v15, :cond_b

    .line 372
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 373
    invoke-virtual {v0, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_b
    new-instance v12, Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$VariantInfo;

    move-object/from16 v22, v8

    int-to-long v7, v7

    move-object/from16 v32, v12

    move-wide/from16 v33, v7

    move-object/from16 v35, v9

    move-object/from16 v36, v13

    move-object/from16 v37, v14

    move-object/from16 v38, v10

    invoke-direct/range {v32 .. v38}, Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$VariantInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v14, v19

    goto :goto_7

    :cond_c
    :goto_6
    move-object/from16 v22, v8

    move-object/from16 v39, v12

    :goto_7
    move/from16 v13, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v12, v39

    goto/16 :goto_0

    :cond_d
    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v39, v12

    move/from16 v20, v13

    .line 382
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 383
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    const/4 v9, 0x0

    .line 384
    :goto_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_10

    .line 385
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;

    .line 386
    iget-object v12, v10, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;->a:Landroid/net/Uri;

    invoke-virtual {v8, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 387
    iget-object v12, v10, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;->b:Landroidx/media2/exoplayer/external/Format;

    iget-object v12, v12, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    if-nez v12, :cond_e

    const/4 v12, 0x1

    goto :goto_9

    :cond_e
    const/4 v12, 0x0

    :goto_9
    invoke-static {v12}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 388
    new-instance v12, Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry;

    iget-object v13, v10, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;->a:Landroid/net/Uri;

    .line 390
    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    const/4 v15, 0x0

    invoke-direct {v12, v15, v15, v13}, Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 391
    iget-object v13, v10, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;->b:Landroidx/media2/exoplayer/external/Format;

    new-instance v15, Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-object/from16 v23, v0

    move-object/from16 p0, v8

    const/4 v0, 0x1

    new-array v8, v0, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    const/4 v0, 0x0

    aput-object v12, v8, v0

    invoke-direct {v15, v8}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    .line 393
    invoke-virtual {v13, v15}, Landroidx/media2/exoplayer/external/Format;->copyWithMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v26

    .line 9134
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;

    iget-object v8, v10, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;->a:Landroid/net/Uri;

    iget-object v12, v10, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;->c:Ljava/lang/String;

    iget-object v13, v10, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;->d:Ljava/lang/String;

    iget-object v15, v10, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;->e:Ljava/lang/String;

    iget-object v10, v10, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;->f:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v25, v8

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v15

    move-object/from16 v30, v10

    invoke-direct/range {v24 .. v30}, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_f
    move-object/from16 v23, v0

    move-object/from16 p0, v8

    :goto_a
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v8, p0

    move-object/from16 v0, v23

    goto :goto_8

    :cond_10
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    .line 397
    :goto_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_26

    .line 398
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 399
    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->B:Ljava/util/regex/Pattern;

    invoke-static {v0, v9, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 400
    sget-object v12, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->A:Ljava/util/regex/Pattern;

    invoke-static {v0, v12, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    .line 401
    sget-object v15, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->w:Ljava/util/regex/Pattern;

    move-object/from16 v36, v3

    const/4 v3, 0x0

    .line 9889
    invoke-static {v0, v15, v3, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_11

    move-object v15, v3

    goto :goto_c

    .line 402
    :cond_11
    invoke-static {v1, v15}, Landroidx/media2/exoplayer/external/util/ab;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v15, v19

    .line 403
    :goto_c
    sget-object v1, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->z:Ljava/util/regex/Pattern;

    .line 10889
    invoke-static {v0, v1, v3, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 11792
    sget-object v3, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->F:Ljava/util/regex/Pattern;

    invoke-static {v0, v3}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->c(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v3

    move-object/from16 p0, v8

    .line 11795
    sget-object v8, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->G:Ljava/util/regex/Pattern;

    invoke-static {v0, v8}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->c(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v8

    if-eqz v8, :cond_12

    or-int/lit8 v3, v3, 0x2

    .line 11798
    :cond_12
    sget-object v8, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->E:Ljava/util/regex/Pattern;

    invoke-static {v0, v8}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->c(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v8

    if-eqz v8, :cond_13

    or-int/lit8 v3, v3, 0x4

    .line 11806
    :cond_13
    sget-object v8, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->C:Ljava/util/regex/Pattern;

    move-object/from16 v37, v7

    const/4 v7, 0x0

    .line 11889
    invoke-static {v0, v8, v7, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 11808
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_14

    move/from16 v38, v14

    const/4 v7, 0x0

    goto :goto_e

    :cond_14
    const-string v7, ","

    .line 11811
    invoke-static {v8, v7}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const-string v8, "public.accessibility.describes-video"

    .line 11813
    invoke-static {v7, v8}, Landroidx/media2/exoplayer/external/util/ac;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    const/16 v8, 0x200

    move/from16 v38, v14

    goto :goto_d

    :cond_15
    move/from16 v38, v14

    const/4 v8, 0x0

    :goto_d
    const-string v14, "public.accessibility.transcribes-spoken-dialog"

    .line 11816
    invoke-static {v7, v14}, Landroidx/media2/exoplayer/external/util/ac;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    or-int/lit16 v8, v8, 0x1000

    :cond_16
    const-string v14, "public.accessibility.describes-music-and-sound"

    .line 11819
    invoke-static {v7, v14}, Landroidx/media2/exoplayer/external/util/ac;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    or-int/lit16 v8, v8, 0x400

    :cond_17
    const-string v14, "public.easy-to-read"

    .line 11822
    invoke-static {v7, v14}, Landroidx/media2/exoplayer/external/util/ac;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    or-int/lit16 v7, v8, 0x2000

    goto :goto_e

    :cond_18
    move v7, v8

    .line 406
    :goto_e
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v14, 0x1

    add-int/2addr v8, v14

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v8, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 408
    new-instance v8, Landroidx/media2/exoplayer/external/metadata/Metadata;

    move/from16 v40, v13

    const/4 v14, 0x1

    new-array v13, v14, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    new-instance v14, Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry;

    move-object/from16 v41, v6

    .line 409
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-direct {v14, v9, v12, v6}, Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const/4 v6, 0x0

    aput-object v14, v13, v6

    invoke-direct {v8, v13}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    .line 410
    sget-object v6, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->y:Ljava/util/regex/Pattern;

    invoke-static {v0, v6, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/4 v14, 0x2

    sparse-switch v13, :sswitch_data_0

    :goto_f
    const/4 v13, -0x1

    goto :goto_10

    :sswitch_0
    const-string v13, "VIDEO"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    goto :goto_f

    :cond_19
    const/4 v13, 0x3

    goto :goto_10

    :sswitch_1
    const-string v13, "AUDIO"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    goto :goto_f

    :cond_1a
    const/4 v13, 0x2

    goto :goto_10

    :sswitch_2
    const-string v13, "CLOSED-CAPTIONS"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    goto :goto_f

    :cond_1b
    const/4 v13, 0x1

    goto :goto_10

    :sswitch_3
    const-string v13, "SUBTITLES"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    goto :goto_f

    :cond_1c
    const/4 v13, 0x0

    :goto_10
    packed-switch v13, :pswitch_data_0

    :cond_1d
    :goto_11
    move-object/from16 v7, v41

    const/4 v6, 0x0

    const/4 v13, 0x1

    const/16 v18, 0x0

    goto/16 :goto_19

    .line 412
    :pswitch_0
    invoke-static {v2, v9}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->b(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 418
    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;->b:Landroidx/media2/exoplayer/external/Format;

    .line 419
    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    invoke-static {v1, v14}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 420
    iget v6, v0, Landroidx/media2/exoplayer/external/Format;->width:I

    .line 421
    iget v13, v0, Landroidx/media2/exoplayer/external/Format;->height:I

    .line 422
    iget v0, v0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    move/from16 v32, v0

    move-object/from16 v27, v1

    move/from16 v30, v6

    move/from16 v31, v13

    goto :goto_12

    :cond_1e
    const/16 v27, 0x0

    const/16 v30, -0x1

    const/16 v31, -0x1

    const/high16 v32, -0x40800000    # -1.0f

    :goto_12
    if-eqz v27, :cond_1f

    .line 424
    invoke-static/range {v27 .. v27}, Landroidx/media2/exoplayer/external/util/m;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v26, v0

    goto :goto_13

    :cond_1f
    const/16 v26, 0x0

    :goto_13
    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v33, 0x0

    const-string v25, "application/x-mpegURL"

    move-object/from16 v24, v12

    move/from16 v34, v3

    move/from16 v35, v7

    .line 426
    invoke-static/range {v23 .. v35}, Landroidx/media2/exoplayer/external/Format;->createVideoContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;IIIFLjava/util/List;II)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    .line 440
    invoke-virtual {v0, v8}, Landroidx/media2/exoplayer/external/Format;->copyWithMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    if-eqz v15, :cond_1d

    .line 444
    new-instance v1, Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;

    invoke-direct {v1, v15, v0, v9, v12}, Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 448
    :pswitch_1
    invoke-static {v2, v9}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;

    move-result-object v6

    if-eqz v6, :cond_20

    .line 451
    iget-object v6, v6, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;->b:Landroidx/media2/exoplayer/external/Format;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-static {v6, v13}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v27, v6

    goto :goto_14

    :cond_20
    const/4 v13, 0x1

    const/16 v27, 0x0

    :goto_14
    if-eqz v27, :cond_21

    .line 453
    invoke-static/range {v27 .. v27}, Landroidx/media2/exoplayer/external/util/m;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v26, v6

    goto :goto_15

    :cond_21
    const/16 v26, 0x0

    .line 12829
    :goto_15
    sget-object v6, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->g:Ljava/util/regex/Pattern;

    const/4 v14, 0x0

    .line 12889
    invoke-static {v0, v6, v14, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    const-string v6, "/"

    .line 12831
    invoke-static {v0, v6}, Landroidx/media2/exoplayer/external/util/ac;->b(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v30, v0

    goto :goto_16

    :cond_22
    const/4 v6, 0x0

    const/16 v30, -0x1

    :goto_16
    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v31, -0x1

    const/16 v32, 0x0

    const-string v25, "application/x-mpegURL"

    move-object/from16 v24, v12

    move/from16 v33, v3

    move/from16 v34, v7

    move-object/from16 v35, v1

    .line 456
    invoke-static/range {v23 .. v35}, Landroidx/media2/exoplayer/external/Format;->createAudioContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;IIILjava/util/List;IILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    if-nez v15, :cond_23

    move-object v8, v0

    move-object/from16 v18, v14

    goto :goto_18

    .line 474
    :cond_23
    new-instance v1, Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;

    invoke-virtual {v0, v8}, Landroidx/media2/exoplayer/external/Format;->copyWithMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    invoke-direct {v1, v15, v0, v9, v12}, Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v14

    move-object/from16 v7, v41

    goto/16 :goto_19

    :pswitch_2
    const/4 v6, 0x0

    const/4 v13, 0x1

    const/16 v18, 0x0

    .line 493
    sget-object v8, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->D:Ljava/util/regex/Pattern;

    invoke-static {v0, v8, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "CC"

    .line 496
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 498
    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v8, "application/cea-608"

    goto :goto_17

    :cond_24
    const/4 v8, 0x7

    .line 501
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v8, "application/cea-708"

    :goto_17
    move/from16 v32, v0

    move-object/from16 v26, v8

    if-nez v10, :cond_25

    .line 504
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :cond_25
    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, -0x1

    move-object/from16 v24, v12

    move/from16 v29, v3

    move/from16 v30, v7

    move-object/from16 v31, v1

    .line 507
    invoke-static/range {v23 .. v32}, Landroidx/media2/exoplayer/external/Format;->createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    .line 506
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, p0

    :goto_18
    move-object/from16 v7, v41

    goto :goto_1a

    :pswitch_3
    const/4 v6, 0x0

    const/4 v13, 0x1

    const/16 v18, 0x0

    const/16 v27, 0x0

    const/16 v28, -0x1

    const-string v25, "application/x-mpegURL"

    const-string v26, "text/vtt"

    move-object/from16 v24, v12

    move/from16 v29, v3

    move/from16 v30, v7

    move-object/from16 v31, v1

    .line 479
    invoke-static/range {v23 .. v31}, Landroidx/media2/exoplayer/external/Format;->createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    .line 489
    invoke-virtual {v0, v8}, Landroidx/media2/exoplayer/external/Format;->copyWithMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    .line 490
    new-instance v1, Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;

    invoke-direct {v1, v15, v0, v9, v12}, Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v41

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_19
    move-object/from16 v8, p0

    :goto_1a
    add-int/lit8 v0, v40, 0x1

    move-object/from16 v1, p1

    move v13, v0

    move-object v6, v7

    move-object/from16 v3, v36

    move-object/from16 v7, v37

    move/from16 v14, v38

    goto/16 :goto_b

    :cond_26
    move-object/from16 v37, v7

    move-object/from16 p0, v8

    move/from16 v38, v14

    move-object v7, v6

    if-eqz v38, :cond_27

    .line 527
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v9, v0

    goto :goto_1b

    :cond_27
    move-object v9, v10

    .line 530
    :goto_1b
    new-instance v13, Landroidx/media2/exoplayer/external/source/hls/playlist/e;

    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v37

    move-object v6, v7

    move-object/from16 v7, v21

    move-object/from16 v8, p0

    move/from16 v10, v20

    move-object/from16 v12, v39

    invoke-direct/range {v0 .. v12}, Landroidx/media2/exoplayer/external/source/hls/playlist/e;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    return-object v13

    nop

    :sswitch_data_0
    .sparse-switch
        -0x392db8c5 -> :sswitch_3
        -0x13dc6572 -> :sswitch_2
        0x3bba3b6 -> :sswitch_1
        0x4de1c5b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Landroidx/media2/exoplayer/external/source/hls/playlist/e;Landroidx/media2/exoplayer/external/source/hls/playlist/h$a;Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/hls/playlist/f;
    .locals 63
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 572
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->p:Z

    .line 575
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 576
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 577
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 594
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-string v7, ""

    const/4 v13, 0x0

    move/from16 v26, v1

    move-wide/from16 v16, v4

    move-wide/from16 v24, v16

    move-object/from16 v37, v7

    move-object v5, v13

    move-object v8, v5

    move-object/from16 v28, v8

    move-object/from16 v40, v28

    move-object/from16 v46, v40

    move-object/from16 v53, v46

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x1

    const/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v38, 0x0

    const/16 v45, 0x0

    const-wide/16 v47, -0x1

    const-wide/16 v51, 0x0

    const-wide/16 v54, 0x0

    .line 599
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/h$a;->a()Z

    move-result v31

    if-eqz v31, :cond_24

    .line 600
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/h$a;->b()Ljava/lang/String;

    move-result-object v10

    const-string v11, "#EXT"

    .line 602
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 604
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v11, "#EXT-X-PLAYLIST-TYPE"

    .line 607
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 608
    sget-object v11, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->m:Ljava/util/regex/Pattern;

    invoke-static {v10, v11, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "VOD"

    .line 609
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const-string v11, "EVENT"

    .line 611
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    :cond_3
    const-string v11, "#EXT-X-START"

    .line 614
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    const-wide v31, 0x412e848000000000L    # 1000000.0

    if-eqz v11, :cond_4

    .line 615
    sget-object v11, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->q:Ljava/util/regex/Pattern;

    invoke-static {v10, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->b(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v10

    mul-double v10, v10, v31

    double-to-long v10, v10

    move-wide/from16 v16, v10

    goto :goto_0

    :cond_4
    const-string v11, "#EXT-X-MAP"

    .line 616
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    const-string v14, "@"

    if-eqz v11, :cond_9

    .line 617
    sget-object v11, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->w:Ljava/util/regex/Pattern;

    invoke-static {v10, v11, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    .line 618
    sget-object v12, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->s:Ljava/util/regex/Pattern;

    .line 13889
    invoke-static {v10, v12, v13, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 620
    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    .line 621
    aget-object v14, v10, v12

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v31

    .line 622
    array-length v12, v10

    const/4 v14, 0x1

    if-le v12, v14, :cond_5

    .line 623
    aget-object v10, v10, v14

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v29

    :cond_5
    move-wide/from16 v33, v31

    move-wide/from16 v31, v29

    goto :goto_1

    :cond_6
    move-wide/from16 v31, v29

    move-wide/from16 v33, v47

    :goto_1
    if-eqz v5, :cond_8

    if-eqz v46, :cond_7

    goto :goto_2

    .line 628
    :cond_7
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128."

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 632
    :cond_8
    :goto_2
    new-instance v53, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;

    move-object/from16 v29, v53

    move-object/from16 v30, v11

    move-object/from16 v35, v5

    move-object/from16 v36, v46

    invoke-direct/range {v29 .. v36}, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v29, 0x0

    const-wide/16 v47, -0x1

    goto/16 :goto_0

    :cond_9
    const-string v11, "#EXT-X-TARGETDURATION"

    .line 641
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 642
    sget-object v11, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->k:Ljava/util/regex/Pattern;

    invoke-static {v10, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v10

    int-to-long v10, v10

    const-wide/32 v24, 0xf4240

    mul-long v24, v24, v10

    goto/16 :goto_0

    :cond_a
    const-string v11, "#EXT-X-MEDIA-SEQUENCE"

    .line 643
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 644
    sget-object v11, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->n:Ljava/util/regex/Pattern;

    .line 14869
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v38

    move-wide/from16 v21, v38

    goto/16 :goto_0

    :cond_b
    const-string v11, "#EXT-X-VERSION"

    .line 646
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 647
    sget-object v11, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->l:Ljava/util/regex/Pattern;

    invoke-static {v10, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v23

    goto/16 :goto_0

    :cond_c
    const-string v11, "#EXT-X-DEFINE"

    .line 648
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 649
    sget-object v11, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->I:Ljava/util/regex/Pattern;

    .line 14889
    invoke-static {v10, v11, v13, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_d

    .line 651
    iget-object v10, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->j:Ljava/util/Map;

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_e

    .line 653
    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 658
    :cond_d
    sget-object v11, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->A:Ljava/util/regex/Pattern;

    .line 659
    invoke-static {v10, v11, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->H:Ljava/util/regex/Pattern;

    .line 660
    invoke-static {v10, v12, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 658
    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_3
    move-object/from16 v61, v3

    move-object/from16 v62, v7

    move-object v0, v13

    const-wide/16 v49, -0x1

    goto/16 :goto_8

    :cond_f
    const-string v11, "#EXTINF"

    .line 662
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 663
    sget-object v11, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->o:Ljava/util/regex/Pattern;

    .line 664
    invoke-static {v10, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->b(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v11

    mul-double v11, v11, v31

    double-to-long v11, v11

    .line 665
    sget-object v14, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->p:Ljava/util/regex/Pattern;

    invoke-static {v10, v14, v7, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v37

    move-wide/from16 v54, v11

    goto/16 :goto_0

    :cond_10
    const-string v11, "#EXT-X-KEY"

    .line 666
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 667
    sget-object v5, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->t:Ljava/util/regex/Pattern;

    invoke-static {v10, v5, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 668
    sget-object v11, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->u:Ljava/util/regex/Pattern;

    const-string v12, "identity"

    .line 669
    invoke-static {v10, v11, v12, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "NONE"

    .line 672
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 673
    invoke-virtual {v3}, Ljava/util/TreeMap;->clear()V

    move-object v5, v13

    move-object/from16 v40, v5

    move-object/from16 v46, v40

    goto/16 :goto_0

    .line 676
    :cond_11
    sget-object v14, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->x:Ljava/util/regex/Pattern;

    .line 15889
    invoke-static {v10, v14, v13, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v46

    .line 677
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    const-string v11, "AES-128"

    .line 678
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 680
    sget-object v5, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->w:Ljava/util/regex/Pattern;

    invoke-static {v10, v5, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_12
    if-nez v8, :cond_13

    .line 687
    invoke-static {v5}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 689
    :cond_13
    invoke-static {v10, v11, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 692
    invoke-virtual {v3, v11, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v40, v13

    :cond_14
    move-object v5, v13

    goto/16 :goto_0

    :cond_15
    const-string v11, "#EXT-X-BYTERANGE"

    .line 696
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 697
    sget-object v11, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->r:Ljava/util/regex/Pattern;

    invoke-static {v10, v11, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 698
    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 699
    aget-object v12, v10, v11

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v47

    .line 700
    array-length v11, v10

    const/4 v12, 0x1

    if-le v11, v12, :cond_0

    .line 701
    aget-object v10, v10, v12

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v29

    goto/16 :goto_0

    :cond_16
    const/4 v12, 0x1

    const-string v11, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 703
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    const/16 v14, 0x3a

    if-eqz v11, :cond_17

    .line 705
    invoke-virtual {v10, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/2addr v1, v12

    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_17
    const-string v11, "#EXT-X-DISCONTINUITY"

    .line 706
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_18
    const-string v11, "#EXT-X-PROGRAM-DATE-TIME"

    .line 708
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_19

    const-wide/16 v11, 0x0

    cmp-long v31, v18, v11

    if-nez v31, :cond_e

    .line 711
    invoke-virtual {v10, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/4 v12, 0x1

    add-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroidx/media2/exoplayer/external/util/ac;->f(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Landroidx/media2/exoplayer/external/c;->b(J)J

    move-result-wide v10

    sub-long v18, v10, v51

    goto/16 :goto_0

    :cond_19
    const/4 v12, 0x1

    const-string v11, "#EXT-X-GAP"

    .line 714
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    const/16 v45, 0x1

    goto/16 :goto_0

    :cond_1a
    const-string v11, "#EXT-X-INDEPENDENT-SEGMENTS"

    .line 716
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    const/16 v26, 0x1

    goto/16 :goto_0

    :cond_1b
    const-string v11, "#EXT-X-ENDLIST"

    .line 718
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    const/16 v27, 0x1

    goto/16 :goto_0

    :cond_1c
    const-string v11, "#"

    .line 720
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_e

    if-nez v5, :cond_1d

    move-object v11, v13

    goto :goto_4

    :cond_1d
    if-eqz v46, :cond_1e

    move-object/from16 v11, v46

    goto :goto_4

    .line 727
    :cond_1e
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v11

    :goto_4
    const-wide/16 v31, 0x1

    add-long v57, v38, v31

    const-wide/16 v49, -0x1

    cmp-long v14, v47, v49

    if-nez v14, :cond_1f

    const-wide/16 v59, 0x0

    goto :goto_5

    :cond_1f
    move-wide/from16 v59, v29

    :goto_5
    if-nez v40, :cond_22

    .line 735
    invoke-virtual {v3}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_22

    .line 736
    invoke-virtual {v3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v12

    const/4 v13, 0x0

    new-array v0, v13, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    invoke-interface {v12, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 737
    new-instance v12, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-direct {v12, v8, v0}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    if-nez v28, :cond_21

    .line 739
    array-length v13, v0

    new-array v13, v13, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    move-object/from16 v61, v3

    move-object/from16 v62, v7

    const/4 v3, 0x0

    .line 740
    :goto_6
    array-length v7, v0

    if-ge v3, v7, :cond_20

    .line 741
    aget-object v7, v0, v3

    move-object/from16 v29, v0

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->copyWithData([B)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    move-result-object v7

    aput-object v7, v13, v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v29

    goto :goto_6

    :cond_20
    const/4 v0, 0x0

    .line 743
    new-instance v3, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-direct {v3, v8, v13}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    move-object/from16 v28, v3

    goto :goto_7

    :cond_21
    move-object/from16 v61, v3

    move-object/from16 v62, v7

    const/4 v0, 0x0

    goto :goto_7

    :cond_22
    move-object/from16 v61, v3

    move-object/from16 v62, v7

    move-object v0, v13

    move-object/from16 v12, v40

    .line 747
    :goto_7
    new-instance v3, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;

    move-object/from16 v29, v3

    .line 749
    invoke-static {v10, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v31, v53

    move-object/from16 v32, v37

    move-wide/from16 v33, v54

    move/from16 v35, v9

    move-wide/from16 v36, v51

    move-object/from16 v38, v12

    move-object/from16 v39, v5

    move-object/from16 v40, v11

    move-wide/from16 v41, v59

    move-wide/from16 v43, v47

    invoke-direct/range {v29 .. v45}, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;Ljava/lang/String;JIJLandroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 747
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long v51, v51, v54

    if-eqz v14, :cond_23

    add-long v59, v59, v47

    :cond_23
    move-wide/from16 v29, v59

    move-object v13, v0

    move-object/from16 v40, v12

    move-wide/from16 v47, v49

    move-wide/from16 v38, v57

    move-object/from16 v3, v61

    move-object/from16 v7, v62

    move-object/from16 v37, v7

    const/16 v45, 0x0

    const-wide/16 v54, 0x0

    goto :goto_9

    :goto_8
    move-object v13, v0

    move-object/from16 v3, v61

    move-object/from16 v7, v62

    :goto_9
    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 771
    :cond_24
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    const-wide/16 v2, 0x0

    cmp-long v5, v18, v2

    if-eqz v5, :cond_25

    const/16 v56, 0x1

    goto :goto_a

    :cond_25
    const/16 v56, 0x0

    :goto_a
    move-object v3, v0

    move-object/from16 v5, p2

    move-wide/from16 v7, v16

    move-wide/from16 v9, v18

    move v11, v1

    move/from16 v12, v20

    move-wide/from16 v13, v21

    move-object v1, v15

    move/from16 v15, v23

    move-wide/from16 v16, v24

    move/from16 v18, v26

    move/from16 v19, v27

    move/from16 v20, v56

    move-object/from16 v21, v28

    move-object/from16 v22, v1

    invoke-direct/range {v3 .. v22}, Landroidx/media2/exoplayer/external/source/hls/playlist/f;-><init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLandroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "SAMPLE-AES-CENC"

    .line 859
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SAMPLE-AES-CTR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "cbcs"

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "cenc"

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 906
    sget-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->J:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 908
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 909
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 910
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 911
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 913
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 912
    invoke-virtual {p0, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 918
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 919
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 897
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 898
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    .line 899
    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 901
    :cond_1
    invoke-static {p2, p3}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object p2
.end method

.method private static a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 16889
    invoke-static {p0, p1, v0, p2}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    .line 883
    :cond_0
    new-instance p2, Landroidx/media2/exoplayer/external/ParserException;

    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x13

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Couldn\'t match "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static a(Ljava/io/BufferedReader;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xef

    if-ne v0, v2, :cond_2

    .line 237
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/16 v2, 0xbb

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/16 v2, 0xbf

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    return v1

    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 243
    invoke-static {p0, v2, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/io/BufferedReader;ZI)I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    const/4 v3, 0x7

    if-ge v2, v3, :cond_4

    const-string v3, "#EXTM3U"

    .line 246
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v0, v3, :cond_3

    return v1

    .line 249
    :cond_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 251
    :cond_4
    invoke-static {p0, v1, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/io/BufferedReader;ZI)I

    move-result p0

    .line 252
    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/ac;->a(I)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/String;Ljava/util/regex/Pattern;)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 873
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method private static b(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 556
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 557
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;

    .line 558
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private b(Landroid/net/Uri;Ljava/io/InputStream;)Landroidx/media2/exoplayer/external/source/hls/playlist/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 199
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    .line 202
    :try_start_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Ljava/io/BufferedReader;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 206
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 207
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "#EXT-X-STREAM-INF"

    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v1, Landroidx/media2/exoplayer/external/source/hls/playlist/h$a;

    invoke-direct {v1, p2, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/h$a;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Landroidx/media2/exoplayer/external/source/hls/playlist/h$a;Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/hls/playlist/e;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/io/Closeable;)V

    return-object p1

    :cond_1
    :try_start_1
    const-string v2, "#EXT-X-TARGETDURATION"

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "#EXT-X-MEDIA-SEQUENCE"

    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "#EXTINF"

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "#EXT-X-KEY"

    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "#EXT-X-BYTERANGE"

    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "#EXT-X-DISCONTINUITY"

    .line 218
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "#EXT-X-ENDLIST"

    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 225
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    :cond_3
    :goto_1
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->K:Landroidx/media2/exoplayer/external/source/hls/playlist/e;

    new-instance v2, Landroidx/media2/exoplayer/external/source/hls/playlist/h$a;

    invoke-direct {v2, p2, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/h$a;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    .line 223
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 222
    invoke-static {v1, v2, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->a(Landroidx/media2/exoplayer/external/source/hls/playlist/e;Landroidx/media2/exoplayer/external/source/hls/playlist/h$a;Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/io/Closeable;)V

    return-object p1

    :cond_4
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/io/Closeable;)V

    .line 231
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string p2, "Failed to parse the playlist, could not identify any tags."

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 203
    :cond_5
    :try_start_2
    new-instance p2, Landroidx/media2/exoplayer/external/source/UnrecognizedInputFormatException;

    const-string v1, "Input does not start with the #EXTM3U header."

    invoke-direct {p2, v1, p1}, Landroidx/media2/exoplayer/external/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 229
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method private static b(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2

    .line 932
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "=(NO|YES"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;Ljava/util/regex/Pattern;)Z
    .locals 0

    .line 924
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 925
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 926
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "YES"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final synthetic a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;->b(Landroid/net/Uri;Ljava/io/InputStream;)Landroidx/media2/exoplayer/external/source/hls/playlist/g;

    move-result-object p1

    return-object p1
.end method
