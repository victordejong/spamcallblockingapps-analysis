.class public final Landroidx/media2/exoplayer/external/text/d/a;
.super Landroidx/media2/exoplayer/external/text/b;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?:(\\d+):)?(\\d+):(\\d+)(?::|\\.)(\\d+)"

    .line 47
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/text/d/a;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/d/a;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "SsaDecoder"

    .line 70
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/b;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 71
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 72
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/text/d/a;->b:Z

    .line 73
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Format: "

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 75
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/d/a;->a(Ljava/lang/String;)V

    .line 76
    new-instance v0, Landroidx/media2/exoplayer/external/util/p;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/util/p;-><init>([B)V

    invoke-static {v0}, Landroidx/media2/exoplayer/external/text/d/a;->a(Landroidx/media2/exoplayer/external/util/p;)V

    return-void

    .line 78
    :cond_0
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/text/d/a;->b:Z

    return-void
.end method

.method private static a(Landroidx/media2/exoplayer/external/util/p;)V
    .locals 2

    .line 106
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->r()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "[Events]"

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/util/p;Ljava/util/List;Landroidx/media2/exoplayer/external/util/k;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/p;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/a;",
            ">;",
            "Landroidx/media2/exoplayer/external/util/k;",
            ")V"
        }
    .end annotation

    .line 124
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->r()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 125
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/text/d/a;->b:Z

    if-nez v1, :cond_1

    const-string v1, "Format: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/d/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "Dialogue: "

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1177
    iget v1, p0, Landroidx/media2/exoplayer/external/text/d/a;->c:I

    const-string v2, "SsaDecoder"

    if-nez v1, :cond_3

    const-string v1, "Skipping dialogue line before complete format: "

    .line 1178
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v2, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0xa

    .line 1182
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Landroidx/media2/exoplayer/external/text/d/a;->c:I

    const-string v4, ","

    .line 1183
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 1184
    array-length v3, v1

    iget v4, p0, Landroidx/media2/exoplayer/external/text/d/a;->c:I

    if-eq v3, v4, :cond_5

    const-string v1, "Skipping dialogue line with fewer columns than format: "

    .line 1185
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v2, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1189
    :cond_5
    iget v3, p0, Landroidx/media2/exoplayer/external/text/d/a;->d:I

    aget-object v3, v1, v3

    invoke-static {v3}, Landroidx/media2/exoplayer/external/text/d/a;->b(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "Skipping invalid timing: "

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v3, v6

    if-nez v8, :cond_7

    .line 1191
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-static {v2, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1196
    :cond_7
    iget v8, p0, Landroidx/media2/exoplayer/external/text/d/a;->e:I

    aget-object v8, v1, v8

    .line 1197
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    .line 1198
    invoke-static {v8}, Landroidx/media2/exoplayer/external/text/d/a;->b(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v10, v8, v6

    if-nez v10, :cond_a

    .line 1200
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-static {v2, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    move-wide v8, v6

    .line 1205
    :cond_a
    iget v0, p0, Landroidx/media2/exoplayer/external/text/d/a;->f:I

    aget-object v0, v1, v0

    const-string v1, "\\{.*?\\}"

    const-string v2, ""

    .line 1206
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\\\N"

    const-string v2, "\n"

    .line 1207
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\\\n"

    .line 1208
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1209
    new-instance v1, Landroidx/media2/exoplayer/external/text/a;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/text/a;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1210
    invoke-virtual {p3, v3, v4}, Landroidx/media2/exoplayer/external/util/k;->a(J)V

    cmp-long v0, v8, v6

    if-eqz v0, :cond_0

    .line 1212
    sget-object v0, Landroidx/media2/exoplayer/external/text/a;->a:Landroidx/media2/exoplayer/external/text/a;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1213
    invoke-virtual {p3, v8, v9}, Landroidx/media2/exoplayer/external/util/k;->a(J)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    const/16 v0, 0x8

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 140
    array-length v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/text/d/a;->c:I

    const/4 v0, -0x1

    .line 141
    iput v0, p0, Landroidx/media2/exoplayer/external/text/d/a;->d:I

    .line 142
    iput v0, p0, Landroidx/media2/exoplayer/external/text/d/a;->e:I

    .line 143
    iput v0, p0, Landroidx/media2/exoplayer/external/text/d/a;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 144
    :goto_0
    iget v3, p0, Landroidx/media2/exoplayer/external/text/d/a;->c:I

    if-ge v2, v3, :cond_3

    .line 145
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_1
    const/4 v3, -0x1

    goto :goto_2

    :sswitch_0
    const-string v4, "start"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x2

    goto :goto_2

    :sswitch_1
    const-string v4, "text"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    goto :goto_2

    :sswitch_2
    const-string v4, "end"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto :goto_3

    .line 148
    :pswitch_0
    iput v2, p0, Landroidx/media2/exoplayer/external/text/d/a;->d:I

    goto :goto_3

    .line 154
    :pswitch_1
    iput v2, p0, Landroidx/media2/exoplayer/external/text/d/a;->f:I

    goto :goto_3

    .line 151
    :pswitch_2
    iput v2, p0, Landroidx/media2/exoplayer/external/text/d/a;->e:I

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    :cond_3
    iget p1, p0, Landroidx/media2/exoplayer/external/text/d/a;->d:I

    if-eq p1, v0, :cond_4

    iget p1, p0, Landroidx/media2/exoplayer/external/text/d/a;->e:I

    if-eq p1, v0, :cond_4

    iget p1, p0, Landroidx/media2/exoplayer/external/text/d/a;->f:I

    if-ne p1, v0, :cond_5

    .line 165
    :cond_4
    iput v1, p0, Landroidx/media2/exoplayer/external/text/d/a;->c:I

    :cond_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0x188db -> :sswitch_2
        0x36452d -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Ljava/lang/String;)J
    .locals 8

    .line 224
    sget-object v0, Landroidx/media2/exoplayer/external/text/d/a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 225
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    .line 228
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    mul-long v0, v0, v2

    const-wide/32 v4, 0xf4240

    mul-long v0, v0, v4

    const/4 v6, 0x2

    .line 229
    invoke-virtual {p0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    mul-long v6, v6, v2

    mul-long v6, v6, v4

    add-long/2addr v0, v6

    const/4 v2, 0x3

    .line 230
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x4

    .line 231
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final a([BIZ)Landroidx/media2/exoplayer/external/text/d;
    .locals 2

    .line 84
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 85
    new-instance v0, Landroidx/media2/exoplayer/external/util/k;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/k;-><init>()V

    .line 87
    new-instance v1, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {v1, p1, p2}, Landroidx/media2/exoplayer/external/util/p;-><init>([BI)V

    .line 88
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/text/d/a;->b:Z

    if-nez p1, :cond_0

    .line 89
    invoke-static {v1}, Landroidx/media2/exoplayer/external/text/d/a;->a(Landroidx/media2/exoplayer/external/util/p;)V

    .line 91
    :cond_0
    invoke-direct {p0, v1, p3, v0}, Landroidx/media2/exoplayer/external/text/d/a;->a(Landroidx/media2/exoplayer/external/util/p;Ljava/util/List;Landroidx/media2/exoplayer/external/util/k;)V

    .line 93
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroidx/media2/exoplayer/external/text/a;

    .line 94
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 95
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/k;->a()[J

    move-result-object p2

    .line 96
    new-instance p3, Landroidx/media2/exoplayer/external/text/d/b;

    invoke-direct {p3, p1, p2}, Landroidx/media2/exoplayer/external/text/d/b;-><init>([Landroidx/media2/exoplayer/external/text/a;[J)V

    return-object p3
.end method
