.class public final Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;,
        Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$c;,
        Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$d;,
        Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$b;,
        Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$e;,
        Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/mediacodec/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final c:Landroid/util/SparseIntArray;

.field private static final d:Landroid/util/SparseIntArray;

.field private static final e:Landroid/util/SparseIntArray;

.field private static final f:Landroid/util/SparseIntArray;

.field private static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Landroid/util/SparseIntArray;

.field private static final k:Landroid/util/SparseIntArray;

.field private static l:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "^\\D?(\\d+)$"

    .line 69
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->a:Ljava/util/regex/Pattern;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->b:Ljava/util/HashMap;

    const/4 v0, -0x1

    .line 100
    sput v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->l:I

    .line 1061
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 1062
    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->c:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    const/4 v2, 0x1

    .line 1110
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1062
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x4d

    const/4 v4, 0x2

    .line 1124
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1063
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x58

    const/4 v6, 0x4

    .line 1111
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1064
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x64

    const/16 v8, 0x8

    .line 1125
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1065
    invoke-virtual {v0, v1, v8}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x6e

    const/16 v10, 0x10

    .line 1112
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1066
    invoke-virtual {v0, v1, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x7a

    const/16 v12, 0x20

    .line 1126
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 1067
    invoke-virtual {v0, v1, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xf4

    const/16 v14, 0x40

    .line 1113
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 1068
    invoke-virtual {v0, v1, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1070
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 1071
    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->d:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xb

    .line 1073
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xc

    .line 1074
    invoke-virtual {v0, v1, v8}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xd

    .line 1075
    invoke-virtual {v0, v1, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x14

    .line 1076
    invoke-virtual {v0, v1, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v10, 0x15

    .line 1077
    invoke-virtual {v0, v10, v14}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v14, 0x16

    const/16 v10, 0x80

    .line 1127
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1078
    invoke-virtual {v0, v14, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v14, 0x1e

    const/16 v10, 0x100

    .line 1114
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1079
    invoke-virtual {v0, v14, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v14, 0x1f

    const/16 v10, 0x200

    .line 1128
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1080
    invoke-virtual {v0, v14, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v14, 0x400

    .line 1081
    invoke-virtual {v0, v12, v14}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v14, 0x28

    const/16 v10, 0x800

    .line 1082
    invoke-virtual {v0, v14, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v14, 0x29

    const/16 v10, 0x1000

    .line 1083
    invoke-virtual {v0, v14, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v14, 0x2a

    const/16 v10, 0x2000

    .line 1084
    invoke-virtual {v0, v14, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v14, 0x32

    const/16 v10, 0x4000

    .line 1085
    invoke-virtual {v0, v14, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v14, 0x33

    const v10, 0x8000

    .line 1086
    invoke-virtual {v0, v14, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v14, 0x34

    const/high16 v10, 0x10000

    .line 1087
    invoke-virtual {v0, v14, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1089
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 1090
    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->e:Landroid/util/SparseIntArray;

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1091
    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v10, 0x4

    .line 1092
    invoke-virtual {v0, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v14, 0x3

    const/16 v12, 0x8

    .line 1093
    invoke-virtual {v0, v14, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1094
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 1095
    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->f:Landroid/util/SparseIntArray;

    const/16 v14, 0xa

    invoke-virtual {v0, v14, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v14, 0xb

    .line 1096
    invoke-virtual {v0, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v14, 0x14

    .line 1097
    invoke-virtual {v0, v14, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v10, 0x15

    .line 1098
    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v10, 0x1e

    const/16 v12, 0x10

    .line 1099
    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v10, 0x1f

    const/16 v12, 0x20

    .line 1100
    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v10, 0x28

    const/16 v12, 0x40

    .line 1101
    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v10, 0x29

    const/16 v12, 0x80

    .line 1102
    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v10, 0x32

    const/16 v12, 0x100

    .line 1103
    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v10, 0x33

    const/16 v12, 0x200

    .line 1104
    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v10, 0x3c

    const/16 v12, 0x800

    .line 1105
    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v10, 0x3d

    const/16 v12, 0x1000

    .line 1106
    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v10, 0x3e

    const/16 v12, 0x2000

    .line 1107
    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1110
    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->g:Ljava/util/Map;

    const-string v10, "L30"

    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "L60"

    .line 1111
    invoke-interface {v0, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "L63"

    .line 1112
    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "L90"

    .line 1113
    invoke-interface {v0, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "L93"

    .line 1114
    invoke-interface {v0, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0x400

    .line 1115
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v10, "L120"

    invoke-interface {v0, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0x1000

    .line 1116
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v10, "L123"

    invoke-interface {v0, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0x4000

    .line 1117
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v10, "L150"

    invoke-interface {v0, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v10, 0x10000

    .line 1118
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "L153"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v10, 0x40000

    .line 1119
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "L156"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v10, 0x100000

    .line 1120
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "L180"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v10, 0x400000

    .line 1121
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "L183"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v10, 0x1000000

    .line 1122
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "L186"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "H30"

    .line 1124
    invoke-interface {v0, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "H60"

    .line 1125
    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "H63"

    .line 1126
    invoke-interface {v0, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "H90"

    .line 1127
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "H93"

    .line 1128
    invoke-interface {v0, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0x800

    .line 1129
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v10, "H120"

    invoke-interface {v0, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0x2000

    .line 1130
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v10, "H123"

    invoke-interface {v0, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v10, 0x8000

    .line 1131
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v10, "H150"

    invoke-interface {v0, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v10, 0x20000

    .line 1132
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "H153"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v10, 0x80000

    .line 1133
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "H156"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v10, 0x200000

    .line 1134
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "H180"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v10, 0x800000

    .line 1135
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "H183"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v10, 0x2000000

    .line 1136
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "H186"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1139
    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->h:Ljava/util/Map;

    const-string v10, "00"

    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "01"

    .line 1140
    invoke-interface {v0, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "02"

    .line 1141
    invoke-interface {v0, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "03"

    .line 1142
    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "04"

    .line 1143
    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "05"

    .line 1144
    invoke-interface {v0, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "06"

    .line 1145
    invoke-interface {v0, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "07"

    .line 1146
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "08"

    .line 1147
    invoke-interface {v0, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "09"

    .line 1148
    invoke-interface {v0, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1151
    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->i:Ljava/util/Map;

    const-string v6, "01"

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "02"

    .line 1152
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "03"

    .line 1153
    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "04"

    .line 1154
    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "05"

    .line 1155
    invoke-interface {v0, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "06"

    .line 1156
    invoke-interface {v0, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "07"

    .line 1157
    invoke-interface {v0, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "08"

    .line 1158
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "09"

    .line 1159
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 1164
    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->j:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1165
    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x4

    .line 1166
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v3, 0x3

    const/16 v5, 0x8

    .line 1167
    invoke-virtual {v0, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x10

    .line 1168
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x5

    const/16 v3, 0x20

    .line 1169
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x6

    const/16 v3, 0x40

    .line 1170
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x7

    const/16 v3, 0x80

    .line 1171
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x100

    .line 1172
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x9

    const/16 v3, 0x200

    .line 1173
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x400

    const/16 v3, 0xa

    .line 1174
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xb

    const/16 v3, 0x800

    .line 1175
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xc

    const/16 v3, 0x1000

    .line 1176
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xd

    const/16 v3, 0x2000

    .line 1177
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xe

    const/16 v3, 0x4000

    .line 1178
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xf

    const v3, 0x8000

    .line 1179
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v1, 0x10000

    const/16 v3, 0x10

    .line 1180
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x11

    const/high16 v3, 0x20000

    .line 1181
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x12

    const/high16 v3, 0x40000

    .line 1182
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x13

    const/high16 v3, 0x80000

    .line 1183
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v1, 0x100000

    const/16 v3, 0x14

    .line 1184
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v1, 0x200000

    const/16 v3, 0x15

    .line 1185
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x16

    const/high16 v3, 0x400000

    .line 1186
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x17

    const/high16 v3, 0x800000

    .line 1187
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1189
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 1190
    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->k:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1191
    invoke-virtual {v0, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x3

    .line 1192
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x4

    .line 1193
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x5

    const/4 v2, 0x5

    .line 1194
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x6

    const/4 v2, 0x6

    .line 1195
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x11

    const/16 v2, 0x11

    .line 1196
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x14

    .line 1197
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x17

    const/16 v2, 0x17

    .line 1198
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x1d

    const/16 v2, 0x1d

    .line 1199
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x27

    const/16 v2, 0x27

    .line 1200
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x2a

    .line 1201
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final synthetic a(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/mediacodec/a;)I
    .locals 0

    .line 209
    :try_start_0
    invoke-virtual {p1, p0}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(Landroidx/media2/exoplayer/external/Format;)Z

    move-result p0
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method static final synthetic a(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$e;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 902
    invoke-interface {p0, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$e;->a(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$e;->a(Ljava/lang/Object;)I

    move-result p0

    sub-int/2addr p2, p0

    return p2
.end method

.method static final synthetic a(Landroidx/media2/exoplayer/external/mediacodec/a;)I
    .locals 1

    .line 581
    iget-object p0, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->a:Ljava/lang/String;

    const-string v0, "OMX.google"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroidx/media2/exoplayer/external/Format;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/Format;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 253
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 254
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v5, :sswitch_data_0

    :goto_0
    const/4 v2, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo v2, "vp09"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    goto :goto_1

    :sswitch_1
    const-string v2, "mp4a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x7

    goto :goto_1

    :sswitch_2
    const-string v2, "hvc1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_3
    const-string v2, "hev1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_4
    const-string v2, "dvhe"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v2, "dvh1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_6
    const-string v2, "avc2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_7
    const-string v2, "avc1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_8
    const-string v5, "av01"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_0

    :cond_9
    :goto_1
    const-string v3, "MediaCodecUtil"

    packed-switch v2, :pswitch_data_0

    return-object v1

    .line 259
    :pswitch_0
    iget-object p0, p0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->b(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 269
    :pswitch_1
    iget-object p0, p0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->c(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 262
    :pswitch_2
    iget-object p0, p0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    .line 3691
    array-length v2, v0

    const-string v4, "Ignoring malformed HEVC codec string: "

    if-ge v2, v6, :cond_b

    .line 3693
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_a
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 3697
    :cond_b
    sget-object v2, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->a:Ljava/util/regex/Pattern;

    aget-object v5, v0, v9

    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 3698
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_d

    .line 3699
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_c
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 3702
    :cond_d
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "1"

    .line 3704
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v8, 0x1

    goto :goto_4

    :cond_e
    const-string v2, "2"

    .line 3706
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3712
    :goto_4
    aget-object p0, v0, v7

    .line 3713
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->g:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_10

    const-string v0, "Unknown HEVC level string: "

    .line 3715
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_f
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 3718
    :cond_10
    new-instance p0, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_11
    const-string v0, "Unknown HEVC profile string: "

    .line 3709
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_12
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 265
    :pswitch_3
    iget-object p0, p0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    .line 4664
    array-length v2, v0

    const-string v4, "Ignoring malformed Dolby Vision codec string: "

    if-ge v2, v7, :cond_14

    .line 4666
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_13
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 4670
    :cond_14
    sget-object v2, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->a:Ljava/util/regex/Pattern;

    aget-object v5, v0, v9

    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 4671
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_16

    .line 4672
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    :cond_15
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_8
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 4675
    :cond_16
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 4676
    sget-object v2, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->h:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_18

    const-string v0, "Unknown Dolby Vision profile string: "

    .line 4678
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    :cond_17
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_9
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 4681
    :cond_18
    aget-object p0, v0, v8

    .line 4682
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->i:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1a

    const-string v0, "Unknown Dolby Vision level string: "

    .line 4684
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    :cond_19
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_a
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 4687
    :cond_1a
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 257
    :pswitch_4
    iget-object p0, p0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 267
    :pswitch_5
    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    iget-object p0, p0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    invoke-static {v1, v0, p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->a(Ljava/lang/String;[Ljava/lang/String;Landroidx/media2/exoplayer/external/video/ColorInfo;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x2dd8f6 -> :sswitch_8
        0x2ddf23 -> :sswitch_7
        0x2ddf24 -> :sswitch_6
        0x2f3cdb -> :sswitch_5
        0x2f3d0f -> :sswitch_4
        0x30d038 -> :sswitch_3
        0x310dbc -> :sswitch_2
        0x333790 -> :sswitch_1
        0x374e43 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 722
    array-length v0, p1

    const-string v1, "Ignoring malformed AVC codec string: "

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "MediaCodecUtil"

    if-ge v0, v2, :cond_1

    .line 724
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v4, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_1
    const/4 v0, 0x1

    .line 730
    :try_start_0
    aget-object v5, p1, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_2

    .line 732
    aget-object v5, p1, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 733
    aget-object p1, p1, v0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_1

    .line 734
    :cond_2
    array-length v5, p1

    const/4 v6, 0x3

    if-lt v5, v6, :cond_5

    .line 736
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 737
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 748
    :goto_1
    sget-object p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->c:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, v0, :cond_3

    const/16 p0, 0x20

    .line 750
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unknown AVC profile: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 753
    :cond_3
    sget-object v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v0, :cond_4

    const/16 p1, 0x1e

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unknown AVC level: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 758
    :cond_4
    new-instance p0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 740
    :cond_5
    :try_start_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v4, p1}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :catch_0
    nop

    .line 744
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-static {v4, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;Landroidx/media2/exoplayer/external/video/ColorInfo;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/video/ColorInfo;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 791
    array-length v0, p1

    const-string v1, "Ignoring malformed AV1 codec string: "

    const/4 v2, 0x0

    const-string v3, "MediaCodecUtil"

    const/4 v4, 0x4

    if-ge v0, v4, :cond_1

    .line 792
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    const/4 v0, 0x1

    .line 799
    :try_start_0
    aget-object v4, p1, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    .line 800
    aget-object v6, p1, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    .line 801
    aget-object p1, p1, v7

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_2

    const/16 p0, 0x20

    .line 808
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unknown AV1 profile: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_2
    const/16 p1, 0x8

    if-eq p0, p1, :cond_3

    const/16 v1, 0xa

    if-eq p0, v1, :cond_3

    const/16 p1, 0x22

    .line 812
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unknown AV1 bit depth: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_3
    if-ne p0, p1, :cond_4

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_6

    .line 818
    iget-object p0, p2, Landroidx/media2/exoplayer/external/video/ColorInfo;->hdrStaticInfo:[B

    if-nez p0, :cond_5

    iget p0, p2, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorTransfer:I

    const/4 p1, 0x7

    if-eq p0, p1, :cond_5

    iget p0, p2, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorTransfer:I

    const/4 p1, 0x6

    if-ne p0, p1, :cond_6

    :cond_5
    const/16 v0, 0x1000

    goto :goto_1

    :cond_6
    const/4 v0, 0x2

    .line 827
    :goto_1
    sget-object p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->j:Landroid/util/SparseIntArray;

    const/4 p1, -0x1

    invoke-virtual {p0, v6, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-ne p0, p1, :cond_7

    const/16 p0, 0x1e

    .line 829
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unknown AV1 level: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 832
    :cond_7
    new-instance p1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :catch_0
    nop

    .line 803
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_8
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static a()Landroidx/media2/exoplayer/external/mediacodec/a;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    const-string v0, "audio/raw"

    .line 134
    invoke-static {v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->a(Ljava/lang/String;)Landroidx/media2/exoplayer/external/mediacodec/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_0
    iget-object v2, v0, Landroidx/media2/exoplayer/external/mediacodec/a;->a:Ljava/lang/String;

    .line 2140
    new-instance v0, Landroidx/media2/exoplayer/external/mediacodec/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Landroidx/media2/exoplayer/external/mediacodec/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Landroidx/media2/exoplayer/external/mediacodec/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 152
    invoke-static {p0, v0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 153
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media2/exoplayer/external/mediacodec/a;

    return-object p0
.end method

.method private static a(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 6434
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    if-nez p2, :cond_0

    const-string p2, ".secure"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_0

    .line 6439
    :cond_0
    sget p2, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v0, 0x15

    if-ge p2, v0, :cond_1

    const-string p2, "CIPAACDecoder"

    .line 6440
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    const-string p2, "CIPMP3Decoder"

    .line 6441
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    const-string p2, "CIPVorbisDecoder"

    .line 6442
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    const-string p2, "CIPAMRNBDecoder"

    .line 6443
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    const-string p2, "AACDecoder"

    .line 6444
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    const-string p2, "MP3Decoder"

    .line 6445
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_0

    .line 6451
    :cond_1
    sget p2, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v0, 0x12

    if-ge p2, v0, :cond_2

    const-string p2, "OMX.MTK.AUDIO.DECODER.AAC"

    .line 6452
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v0, "a70"

    .line 6453
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->c:Ljava/lang/String;

    const-string v0, "Xiaomi"

    .line 6454
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v0, "HM"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto/16 :goto_0

    .line 6460
    :cond_2
    sget p2, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v0, 0x10

    if-ne p2, v0, :cond_3

    const-string p2, "OMX.qcom.audio.decoder.mp3"

    .line 6461
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v2, "dlxu"

    .line 6462
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v2, "protou"

    .line 6463
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string/jumbo v2, "ville"

    .line 6464
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string/jumbo v2, "villeplus"

    .line 6465
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string/jumbo v2, "villec2"

    .line 6466
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v2, "gee"

    .line 6467
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v2, "C6602"

    .line 6468
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v2, "C6603"

    .line 6469
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v2, "C6606"

    .line 6470
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v2, "C6616"

    .line 6471
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v2, "L36h"

    .line 6472
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v2, "SO-02E"

    .line 6473
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto/16 :goto_0

    .line 6478
    :cond_3
    sget p2, Landroidx/media2/exoplayer/external/util/ac;->a:I

    if-ne p2, v0, :cond_4

    const-string p2, "OMX.qcom.audio.decoder.aac"

    .line 6479
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v0, "C1504"

    .line 6480
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v0, "C1505"

    .line 6481
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v0, "C1604"

    .line 6482
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v0, "C1605"

    .line 6483
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto/16 :goto_0

    .line 6488
    :cond_4
    sget p2, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v0, 0x18

    const-string v2, "samsung"

    if-ge p2, v0, :cond_6

    const-string p2, "OMX.SEC.aac.dec"

    .line 6489
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "OMX.Exynos.AAC.Decoder"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->c:Ljava/lang/String;

    .line 6490
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string/jumbo v0, "zeroflte"

    .line 6491
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string/jumbo v0, "zerolte"

    .line 6492
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string/jumbo v0, "zenlte"

    .line 6493
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v0, "SC-05G"

    .line 6494
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v0, "marinelteatt"

    .line 6495
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v0, "404SC"

    .line 6496
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v0, "SC-04G"

    .line 6497
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v0, "SCV31"

    .line 6498
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto/16 :goto_0

    .line 6504
    :cond_6
    sget p2, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const-string v0, "jflte"

    const/16 v3, 0x13

    if-gt p2, v3, :cond_7

    const-string p2, "OMX.SEC.vp8.dec"

    .line 6505
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->c:Ljava/lang/String;

    .line 6506
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v2, "d2"

    .line 6507
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v2, "serrano"

    .line 6508
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    .line 6509
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v2, "santos"

    .line 6510
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v2, "t0"

    .line 6511
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_0

    .line 6516
    :cond_7
    sget p2, Landroidx/media2/exoplayer/external/util/ac;->a:I

    if-gt p2, v3, :cond_8

    sget-object p2, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "OMX.qcom.video.decoder.vp8"

    .line 6517
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_0

    :cond_8
    const-string p2, "audio/eac3-joc"

    .line 6522
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p2, "OMX.MTK.AUDIO.DECODER.DSPAC3"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_0

    :cond_9
    const/4 p2, 0x1

    goto :goto_1

    :cond_a
    :goto_0
    const/4 p2, 0x0

    :goto_1
    const/4 v0, 0x0

    if-nez p2, :cond_b

    return-object v0

    .line 395
    :cond_b
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object p0

    .line 396
    array-length p2, p0

    :goto_2
    if-ge v1, p2, :cond_d

    aget-object v2, p0, v1

    .line 397
    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    return-object v2

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    const-string/jumbo p0, "video/dolby-vision"

    .line 402
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "OMX.MS.HEVCDV.Decoder"

    .line 405
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const-string/jumbo p0, "video/hevcdv"

    return-object p0

    :cond_e
    const-string p0, "OMX.RTK.video.decoder"

    .line 407
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    const-string p0, "OMX.realtek.video.decoder.tunneled"

    .line 408
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_f
    const-string/jumbo p0, "video/dv_hevc"

    return-object p0

    :cond_10
    const-string p0, "audio/alac"

    .line 411
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    const-string p0, "OMX.lge.alac.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    const-string p0, "audio/x-lg-alac"

    return-object p0

    :cond_11
    const-string p0, "audio/flac"

    .line 413
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const-string p0, "OMX.lge.flac.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const-string p0, "audio/x-lg-flac"

    return-object p0

    :cond_12
    return-object v0
.end method

.method private static a(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$b;)Ljava/util/ArrayList;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$b;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/mediacodec/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "secure-playback"

    const-string v4, "tunneled-playback"

    .line 289
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 290
    iget-object v15, v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;->a:Ljava/lang/String;

    .line 291
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$b;->a()I

    move-result v14

    .line 292
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$b;->b()Z

    move-result v13

    const/16 v16, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v14, :cond_11

    .line 295
    invoke-interface {v2, v12}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$b;->a(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v11

    .line 297
    invoke-static {v0, v11, v13, v15}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->a(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v10, :cond_f

    .line 302
    :try_start_1
    invoke-virtual {v0, v10}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v9

    .line 304
    invoke-interface {v2, v4, v10, v9}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v6

    .line 307
    invoke-interface {v2, v4, v9}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$b;->a(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v7

    .line 309
    iget-boolean v8, v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;->c:Z

    if-nez v8, :cond_0

    if-nez v7, :cond_f

    :cond_0
    iget-boolean v7, v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;->c:Z

    if-eqz v7, :cond_1

    if-nez v6, :cond_1

    goto/16 :goto_5

    .line 313
    :cond_1
    invoke-interface {v2, v3, v10, v9}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v6

    .line 316
    invoke-interface {v2, v3, v9}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$b;->a(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v7

    .line 318
    iget-boolean v8, v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;->b:Z

    if-nez v8, :cond_2

    if-nez v7, :cond_f

    :cond_2
    iget-boolean v7, v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;->b:Z

    if-eqz v7, :cond_3

    if-nez v6, :cond_3

    goto/16 :goto_5

    .line 5591
    :cond_3
    sget v7, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v8, 0x1d

    const/16 v17, 0x1

    if-lt v7, v8, :cond_4

    .line 5601
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result v7

    move/from16 v18, v7

    goto :goto_1

    .line 5596
    :cond_4
    invoke-static {v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->a(Landroid/media/MediaCodecInfo;)Z

    move-result v7

    if-nez v7, :cond_5

    const/16 v18, 0x1

    goto :goto_1

    :cond_5
    const/16 v18, 0x0

    .line 322
    :goto_1
    invoke-static {v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->a(Landroid/media/MediaCodecInfo;)Z

    move-result v19

    .line 5635
    sget v7, Landroidx/media2/exoplayer/external/util/ac;->a:I

    if-lt v7, v8, :cond_6

    .line 5646
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isVendor()Z

    move-result v0

    goto :goto_2

    .line 5638
    :cond_6
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v7, "omx.google."

    .line 5639
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "c2.android."

    .line 5640
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "c2.google."

    .line 5641
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    .line 5657
    :goto_2
    sget v7, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v8, 0x16

    if-gt v7, v8, :cond_9

    const-string v7, "ODROID-XU3"

    sget-object v8, Landroidx/media2/exoplayer/external/util/ac;->d:Ljava/lang/String;

    .line 5658
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "Nexus 10"

    sget-object v8, Landroidx/media2/exoplayer/external/util/ac;->d:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    const-string v7, "OMX.Exynos.AVC.Decoder"

    .line 5659
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "OMX.Exynos.AVC.Decoder.secure"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_3

    :cond_9
    const/16 v17, 0x0

    :cond_a
    :goto_3
    if-eqz v13, :cond_b

    .line 325
    iget-boolean v7, v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;->b:Z

    if-eq v7, v6, :cond_c

    :cond_b
    if-nez v13, :cond_d

    iget-boolean v7, v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;->b:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v7, :cond_d

    :cond_c
    const/16 v20, 0x0

    move-object v6, v11

    move-object v7, v15

    move-object v8, v10

    move-object/from16 v21, v10

    move/from16 v10, v18

    move-object/from16 v22, v11

    move/from16 v11, v19

    move/from16 v23, v12

    move v12, v0

    move/from16 v24, v13

    move/from16 v13, v17

    move/from16 v25, v14

    move/from16 v14, v20

    .line 328
    :try_start_2
    invoke-static/range {v6 .. v14}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Landroidx/media2/exoplayer/external/mediacodec/a;

    move-result-object v0

    .line 327
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_d
    move-object/from16 v21, v10

    move-object/from16 v22, v11

    move/from16 v23, v12

    move/from16 v24, v13

    move/from16 v25, v14

    if-nez v24, :cond_10

    if-eqz v6, :cond_10

    .line 339
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ".secure"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x1

    move-object v7, v15

    move-object/from16 v8, v21

    move/from16 v10, v18

    move/from16 v11, v19

    move v12, v0

    move/from16 v13, v17

    .line 340
    invoke-static/range {v6 .. v14}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Landroidx/media2/exoplayer/external/mediacodec/a;

    move-result-object v0

    .line 339
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v5

    :catch_1
    move-exception v0

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    move/from16 v23, v12

    move/from16 v24, v13

    move/from16 v25, v14

    .line 354
    :goto_4
    :try_start_3
    sget v6, Landroidx/media2/exoplayer/external/util/ac;->a:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/16 v7, 0x17

    const-string v8, "MediaCodecUtil"

    if-gt v6, v7, :cond_e

    :try_start_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e

    .line 356
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Skipping codec "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v22

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (failed to query capabilities)"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroidx/media2/exoplayer/external/util/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    move-object/from16 v7, v22

    .line 360
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x19

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to query codec "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroidx/media2/exoplayer/external/util/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_f
    :goto_5
    move/from16 v23, v12

    move/from16 v24, v13

    move/from16 v25, v14

    :cond_10
    :goto_6
    add-int/lit8 v12, v23, 0x1

    move/from16 v13, v24

    move/from16 v14, v25

    goto/16 :goto_0

    :cond_11
    return-object v5

    :catch_2
    move-exception v0

    .line 369
    new-instance v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;-><init>(Ljava/lang/Throwable;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$1;)V

    throw v1
.end method

.method public static declared-synchronized a(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/mediacodec/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    const-class v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;

    monitor-enter v0

    .line 171
    :try_start_0
    new-instance v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;-><init>(Ljava/lang/String;ZZ)V

    .line 172
    sget-object v2, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 174
    monitor-exit v0

    return-object v3

    .line 177
    :cond_0
    :try_start_1
    sget v3, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/4 v4, 0x0

    const/16 v5, 0x15

    if-lt v3, v5, :cond_1

    .line 178
    new-instance v3, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$d;

    invoke-direct {v3, p1, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$d;-><init>(ZZ)V

    goto :goto_0

    .line 179
    :cond_1
    new-instance v3, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$c;

    invoke-direct {v3, v4}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$c;-><init>(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$1;)V

    .line 180
    :goto_0
    invoke-static {v1, v3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->a(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$b;)Ljava/util/ArrayList;

    move-result-object p2

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 181
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    if-gt v5, p1, :cond_2

    sget p1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v6, 0x17

    if-gt p1, v6, :cond_2

    .line 184
    new-instance p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$c;

    invoke-direct {p1, v4}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$c;-><init>(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$1;)V

    .line 185
    invoke-static {v1, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->a(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$b;)Ljava/util/ArrayList;

    move-result-object p2

    .line 186
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "MediaCodecUtil"

    .line 188
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/mediacodec/a;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/mediacodec/a;->a:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x3f

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "MediaCodecList API didn\'t list secure decoder for: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". Assuming: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 187
    invoke-static {p1, v4}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p1, "audio/raw"

    .line 2537
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_4

    .line 2538
    sget p0, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v4, 0x1a

    if-ge p0, v4, :cond_3

    sget-object p0, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v4, "R9"

    .line 2539
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 2540
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, p1, :cond_3

    .line 2541
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media2/exoplayer/external/mediacodec/a;

    iget-object p0, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->a:Ljava/lang/String;

    const-string p1, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string v3, "OMX.google.raw.decoder"

    const-string v4, "audio/raw"

    const-string v5, "audio/raw"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 2545
    invoke-static/range {v3 .. v11}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Landroidx/media2/exoplayer/external/mediacodec/a;

    move-result-object p0

    .line 2544
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2557
    :cond_3
    sget-object p0, Landroidx/media2/exoplayer/external/mediacodec/d;->a:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$e;

    invoke-static {p2, p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->a(Ljava/util/List;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$e;)V

    goto :goto_1

    .line 2572
    :cond_4
    sget p0, Landroidx/media2/exoplayer/external/util/ac;->a:I

    if-ge p0, v5, :cond_6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, p1, :cond_6

    .line 2573
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media2/exoplayer/external/mediacodec/a;

    iget-object p0, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->a:Ljava/lang/String;

    const-string p1, "OMX.SEC.mp3.dec"

    .line 2574
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "OMX.SEC.MP3.Decoder"

    .line 2575
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "OMX.brcm.audio.mp3.decoder"

    .line 2576
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 2581
    :cond_5
    sget-object p0, Landroidx/media2/exoplayer/external/mediacodec/e;->a:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$e;

    invoke-static {p2, p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->a(Ljava/util/List;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$e;)V

    .line 192
    :cond_6
    :goto_1
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 193
    invoke-virtual {v2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Ljava/util/List;Landroidx/media2/exoplayer/external/Format;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/mediacodec/a;",
            ">;",
            "Landroidx/media2/exoplayer/external/Format;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/mediacodec/a;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 205
    new-instance p0, Landroidx/media2/exoplayer/external/mediacodec/c;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/c;-><init>(Landroidx/media2/exoplayer/external/Format;)V

    invoke-static {v0, p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->a(Ljava/util/List;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$e;)V

    return-object v0
.end method

.method private static a(Ljava/util/List;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$e<",
            "TT;>;)V"
        }
    .end annotation

    .line 902
    new-instance v0, Landroidx/media2/exoplayer/external/mediacodec/f;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/mediacodec/f;-><init>(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$e;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private static a(Landroid/media/MediaCodecInfo;)Z
    .locals 2

    .line 609
    sget v0, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 6627
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result p0

    return p0

    .line 612
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "arc."

    .line 613
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "omx.google."

    .line 616
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "omx.ffmpeg."

    .line 617
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "omx.sec."

    .line 618
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ".sw."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    const-string v0, "omx.qcom.video.decoder.hevcswvdec"

    .line 619
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "c2.android."

    .line 620
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "c2.google."

    .line 621
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "omx."

    .line 622
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "c2."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 223
    sget v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    const-string/jumbo v0, "video/avc"

    .line 226
    invoke-static {v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->a(Ljava/lang/String;)Landroidx/media2/exoplayer/external/mediacodec/a;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 228
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/mediacodec/a;->a()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 229
    iget v5, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    sparse-switch v5, :sswitch_data_0

    const/4 v5, -0x1

    goto :goto_1

    :sswitch_0
    const/high16 v5, 0x900000

    goto :goto_1

    :sswitch_1
    const v5, 0x564000

    goto :goto_1

    :sswitch_2
    const/high16 v5, 0x220000

    goto :goto_1

    :sswitch_3
    const/high16 v5, 0x200000

    goto :goto_1

    :sswitch_4
    const/high16 v5, 0x140000

    goto :goto_1

    :sswitch_5
    const v5, 0xe1000

    goto :goto_1

    :sswitch_6
    const v5, 0x65400

    goto :goto_1

    :sswitch_7
    const v5, 0x31800

    goto :goto_1

    :sswitch_8
    const v5, 0x18c00

    goto :goto_1

    :cond_0
    const/16 v5, 0x6300

    :goto_1
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    :cond_1
    sget v0, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    const v0, 0x54600

    goto :goto_2

    :cond_2
    const v0, 0x2a300

    :goto_2
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 235
    :cond_3
    sput v2, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->l:I

    .line 237
    :cond_4
    sget v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->l:I

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_8
        0x10 -> :sswitch_8
        0x20 -> :sswitch_8
        0x40 -> :sswitch_7
        0x80 -> :sswitch_6
        0x100 -> :sswitch_6
        0x200 -> :sswitch_5
        0x400 -> :sswitch_4
        0x800 -> :sswitch_3
        0x1000 -> :sswitch_3
        0x2000 -> :sswitch_2
        0x4000 -> :sswitch_1
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_0
    .end sparse-switch
.end method

.method static final synthetic b(Landroidx/media2/exoplayer/external/mediacodec/a;)I
    .locals 2

    .line 560
    iget-object p0, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->a:Ljava/lang/String;

    const-string v0, "OMX.google"

    .line 561
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "c2.android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 565
    :cond_0
    sget v0, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 762
    array-length v0, p1

    const-string v1, "Ignoring malformed VP9 codec string: "

    const/4 v2, 0x0

    const-string v3, "MediaCodecUtil"

    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    .line 763
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    const/4 v0, 0x1

    .line 769
    :try_start_0
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x2

    .line 770
    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    sget-object p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->e:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, v1, :cond_2

    const/16 p0, 0x20

    .line 778
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unknown VP9 profile: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 781
    :cond_2
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v1, :cond_3

    const/16 p1, 0x1e

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unknown VP9 level: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 786
    :cond_3
    new-instance p0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :catch_0
    nop

    .line 772
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static c(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 877
    array-length v0, p1

    const/4 v1, 0x0

    const-string v2, "Ignoring malformed MP4A codec string: "

    const-string v3, "MediaCodecUtil"

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    .line 878
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const/4 v0, 0x1

    .line 883
    :try_start_0
    aget-object v0, p1, v0

    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 884
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/m;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "audio/mp4a-latm"

    .line 885
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    .line 887
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 888
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->k:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v0, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-eq p1, v4, :cond_3

    .line 891
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, p1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    nop

    .line 895
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v1
.end method
