.class final Lcom/google/android/exoplayer2/text/a/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field static final d:[I

.field static final e:[I

.field static final f:[I

.field private static final t:[I

.field private static final u:[I

.field private static final v:[Z

.field private static final w:[I

.field private static final x:[I


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field h:Z

.field i:Z

.field j:I

.field k:Z

.field l:I

.field m:I

.field n:I

.field o:I

.field p:Z

.field q:I

.field r:I

.field s:I

.field private final y:Landroid/text/SpannableStringBuilder;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 859
    invoke-static {v0, v0, v0, v1}, Lcom/google/android/exoplayer2/text/a/b$b;->a(IIII)I

    move-result v2

    sput v2, Lcom/google/android/exoplayer2/text/a/b$b;->a:I

    .line 860
    invoke-static {v1, v1, v1, v1}, Lcom/google/android/exoplayer2/text/a/b$b;->a(IIII)I

    move-result v2

    sput v2, Lcom/google/android/exoplayer2/text/a/b$b;->b:I

    const/4 v3, 0x3

    .line 861
    invoke-static {v1, v1, v1, v3}, Lcom/google/android/exoplayer2/text/a/b$b;->a(IIII)I

    move-result v4

    sput v4, Lcom/google/android/exoplayer2/text/a/b$b;->c:I

    const/4 v5, 0x7

    new-array v6, v5, [I

    .line 877
    fill-array-data v6, :array_0

    sput-object v6, Lcom/google/android/exoplayer2/text/a/b$b;->d:[I

    new-array v6, v5, [I

    .line 882
    fill-array-data v6, :array_1

    sput-object v6, Lcom/google/android/exoplayer2/text/a/b$b;->t:[I

    new-array v6, v5, [I

    .line 887
    fill-array-data v6, :array_2

    sput-object v6, Lcom/google/android/exoplayer2/text/a/b$b;->u:[I

    new-array v6, v5, [Z

    .line 892
    fill-array-data v6, :array_3

    sput-object v6, Lcom/google/android/exoplayer2/text/a/b$b;->v:[Z

    new-array v6, v5, [I

    aput v2, v6, v1

    const/4 v7, 0x1

    aput v4, v6, v7

    aput v2, v6, v0

    aput v2, v6, v3

    const/4 v8, 0x4

    aput v4, v6, v8

    const/4 v9, 0x5

    aput v2, v6, v9

    const/4 v10, 0x6

    aput v2, v6, v10

    .line 895
    sput-object v6, Lcom/google/android/exoplayer2/text/a/b$b;->e:[I

    new-array v6, v5, [I

    .line 901
    fill-array-data v6, :array_4

    sput-object v6, Lcom/google/android/exoplayer2/text/a/b$b;->w:[I

    new-array v6, v5, [I

    .line 908
    fill-array-data v6, :array_5

    sput-object v6, Lcom/google/android/exoplayer2/text/a/b$b;->x:[I

    new-array v5, v5, [I

    aput v2, v5, v1

    aput v2, v5, v7

    aput v2, v5, v0

    aput v2, v5, v3

    aput v2, v5, v8

    aput v4, v5, v9

    aput v4, v5, v10

    .line 913
    sput-object v5, Lcom/google/android/exoplayer2/text/a/b$b;->f:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x3
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 945
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->g:Ljava/util/List;

    .line 946
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->y:Landroid/text/SpannableStringBuilder;

    .line 947
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/a/b$b;->b()V

    return-void
.end method

.method public static a(III)I
    .locals 1

    const/4 v0, 0x0

    .line 1284
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(IIII)I

    move-result p0

    return p0
.end method

.method public static a(IIII)I
    .locals 4

    const/4 v0, 0x4

    .line 1288
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/a;->a(II)I

    .line 1289
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/a;->a(II)I

    .line 1290
    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/util/a;->a(II)I

    .line 1291
    invoke-static {p3, v0}, Lcom/google/android/exoplayer2/util/a;->a(II)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xff

    if-eqz p3, :cond_2

    if-eq p3, v1, :cond_2

    const/4 v3, 0x2

    if-eq p3, v3, :cond_1

    const/4 v3, 0x3

    if-eq p3, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    const/16 p3, 0x7f

    goto :goto_1

    :cond_2
    :goto_0
    const/16 p3, 0xff

    :goto_1
    if-le p0, v1, :cond_3

    const/16 p0, 0xff

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    if-le p1, v1, :cond_4

    const/16 p1, 0xff

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    if-le p2, v1, :cond_5

    const/16 v0, 0xff

    .line 1313
    :cond_5
    invoke-static {p3, p0, p1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private f()Landroid/text/SpannableString;
    .locals 6

    .line 1164
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->y:Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1166
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1169
    iget v2, p0, Lcom/google/android/exoplayer2/text/a/b$b;->B:I

    const/16 v3, 0x21

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 1170
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v5, p0, Lcom/google/android/exoplayer2/text/a/b$b;->B:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1174
    :cond_0
    iget v2, p0, Lcom/google/android/exoplayer2/text/a/b$b;->C:I

    if-eq v2, v4, :cond_1

    .line 1175
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v5, p0, Lcom/google/android/exoplayer2/text/a/b$b;->C:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1179
    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer2/text/a/b$b;->D:I

    if-eq v2, v4, :cond_2

    .line 1180
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v5, p0, Lcom/google/android/exoplayer2/text/a/b$b;->E:I

    invoke-direct {v2, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v5, p0, Lcom/google/android/exoplayer2/text/a/b$b;->D:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1184
    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer2/text/a/b$b;->F:I

    if-eq v2, v4, :cond_3

    .line 1185
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    iget v4, p0, Lcom/google/android/exoplayer2/text/a/b$b;->G:I

    invoke-direct {v2, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v4, p0, Lcom/google/android/exoplayer2/text/a/b$b;->F:I

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1190
    :cond_3
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1
.end method


# virtual methods
.method public final a(C)V
    .locals 2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_6

    .line 1138
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->g:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/b$b;->f()Landroid/text/SpannableString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1139
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->y:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1141
    iget p1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->B:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 1142
    iput v1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->B:I

    .line 1144
    :cond_0
    iget p1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->C:I

    if-eq p1, v0, :cond_1

    .line 1145
    iput v1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->C:I

    .line 1147
    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->D:I

    if-eq p1, v0, :cond_2

    .line 1148
    iput v1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->D:I

    .line 1150
    :cond_2
    iget p1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->F:I

    if-eq p1, v0, :cond_3

    .line 1151
    iput v1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->F:I

    .line 1154
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->p:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->o:I

    if-ge p1, v0, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->g:Ljava/util/List;

    .line 1155
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xf

    if-lt p1, v0, :cond_7

    .line 1156
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->g:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1159
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->y:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_7
    return-void
.end method

.method public final a(II)V
    .locals 0

    .line 1049
    iput p1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->A:I

    .line 1054
    iput p2, p0, Lcom/google/android/exoplayer2/text/a/b$b;->z:I

    return-void
.end method

.method public final a(ZZ)V
    .locals 5

    .line 1064
    iget v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->B:I

    const/16 v1, 0x21

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-nez p1, :cond_1

    .line 1066
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->y:Landroid/text/SpannableStringBuilder;

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v3, p0, Lcom/google/android/exoplayer2/text/a/b$b;->B:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/a/b$b;->y:Landroid/text/SpannableStringBuilder;

    .line 1067
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 1066
    invoke-virtual {p1, v0, v3, v4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1068
    iput v2, p0, Lcom/google/android/exoplayer2/text/a/b$b;->B:I

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1071
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->y:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->B:I

    .line 1074
    :cond_1
    :goto_0
    iget p1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->C:I

    if-eq p1, v2, :cond_2

    if-nez p2, :cond_3

    .line 1076
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->y:Landroid/text/SpannableStringBuilder;

    new-instance p2, Landroid/text/style/UnderlineSpan;

    invoke-direct {p2}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->C:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/a/b$b;->y:Landroid/text/SpannableStringBuilder;

    .line 1077
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 1076
    invoke-virtual {p1, p2, v0, v3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1078
    iput v2, p0, Lcom/google/android/exoplayer2/text/a/b$b;->C:I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 1081
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->y:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->C:I

    :cond_3
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 1986
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->h:Z

    if-eqz v0, :cond_1

    .line 951
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->y:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 2

    .line 955
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/a/b$b;->c()V

    const/4 v0, 0x0

    .line 957
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->h:Z

    .line 958
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->i:Z

    const/4 v1, 0x4

    .line 959
    iput v1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->j:I

    .line 960
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->k:Z

    .line 961
    iput v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->l:I

    .line 962
    iput v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->m:I

    .line 963
    iput v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->n:I

    const/16 v1, 0xf

    .line 964
    iput v1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->o:I

    const/4 v1, 0x1

    .line 965
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->p:Z

    .line 966
    iput v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->z:I

    .line 967
    iput v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->q:I

    .line 968
    iput v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->r:I

    .line 969
    sget v0, Lcom/google/android/exoplayer2/text/a/b$b;->b:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->A:I

    .line 971
    sget v1, Lcom/google/android/exoplayer2/text/a/b$b;->a:I

    iput v1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->E:I

    .line 972
    iput v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->G:I

    return-void
.end method

.method public final b(II)V
    .locals 6

    .line 1089
    iget v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->D:I

    const/16 v1, 0x21

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1090
    iget v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->E:I

    if-eq v0, p1, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->y:Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget v4, p0, Lcom/google/android/exoplayer2/text/a/b$b;->E:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v4, p0, Lcom/google/android/exoplayer2/text/a/b$b;->D:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/text/a/b$b;->y:Landroid/text/SpannableStringBuilder;

    .line 1092
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 1091
    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1096
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/text/a/b$b;->a:I

    if-eq p1, v0, :cond_1

    .line 1097
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->y:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->D:I

    .line 1098
    iput p1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->E:I

    .line 1101
    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->F:I

    if-eq p1, v2, :cond_2

    .line 1102
    iget p1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->G:I

    if-eq p1, p2, :cond_2

    .line 1103
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->y:Landroid/text/SpannableStringBuilder;

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    iget v2, p0, Lcom/google/android/exoplayer2/text/a/b$b;->G:I

    invoke-direct {v0, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v2, p0, Lcom/google/android/exoplayer2/text/a/b$b;->F:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/a/b$b;->y:Landroid/text/SpannableStringBuilder;

    .line 1104
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 1103
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1108
    :cond_2
    sget p1, Lcom/google/android/exoplayer2/text/a/b$b;->b:I

    if-eq p2, p1, :cond_3

    .line 1109
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->y:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->F:I

    .line 1110
    iput p2, p0, Lcom/google/android/exoplayer2/text/a/b$b;->G:I

    :cond_3
    return-void
.end method

.method public final c()V
    .locals 1

    .line 976
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 977
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->y:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    const/4 v0, -0x1

    .line 978
    iput v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->B:I

    .line 979
    iput v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->C:I

    .line 980
    iput v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->D:I

    .line 981
    iput v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->F:I

    const/4 v0, 0x0

    .line 982
    iput v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->s:I

    return-void
.end method

.method public final d()V
    .locals 3

    .line 1130
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/b$b;->y:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1132
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->y:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_0
    return-void
.end method

.method public final e()Lcom/google/android/exoplayer2/text/a/b$a;
    .locals 15

    .line 1195
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/a/b$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1200
    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1203
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/a/b$b;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1204
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/a/b$b;->g:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v3, 0xa

    .line 1205
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1208
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/b$b;->f()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1213
    iget v1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->z:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v3, :cond_3

    if-ne v1, v4, :cond_2

    goto :goto_1

    .line 1226
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected justification value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/exoplayer2/text/a/b$b;->z:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1223
    :cond_3
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_2

    .line 1220
    :cond_4
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_2

    .line 1217
    :cond_5
    :goto_1
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_2
    move-object v6, v1

    .line 1231
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->k:Z

    if-eqz v1, :cond_6

    .line 1232
    iget v1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->m:I

    int-to-float v1, v1

    const/high16 v7, 0x42c60000    # 99.0f

    div-float/2addr v1, v7

    .line 1233
    iget v8, p0, Lcom/google/android/exoplayer2/text/a/b$b;->l:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    goto :goto_3

    .line 1235
    :cond_6
    iget v1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->m:I

    int-to-float v1, v1

    const/high16 v7, 0x43510000    # 209.0f

    div-float/2addr v1, v7

    .line 1236
    iget v7, p0, Lcom/google/android/exoplayer2/text/a/b$b;->l:I

    int-to-float v7, v7

    const/high16 v8, 0x42940000    # 74.0f

    div-float v8, v7, v8

    :goto_3
    const v7, 0x3f666666    # 0.9f

    mul-float v1, v1, v7

    const v9, 0x3d4ccccd    # 0.05f

    add-float v10, v1, v9

    mul-float v8, v8, v7

    add-float v7, v8, v9

    .line 1250
    iget v1, p0, Lcom/google/android/exoplayer2/text/a/b$b;->n:I

    div-int/lit8 v8, v1, 0x3

    if-nez v8, :cond_7

    const/4 v8, 0x0

    goto :goto_4

    .line 1252
    :cond_7
    div-int/lit8 v8, v1, 0x3

    if-ne v8, v5, :cond_8

    const/4 v8, 0x1

    goto :goto_4

    :cond_8
    const/4 v8, 0x2

    .line 1259
    :goto_4
    rem-int/lit8 v9, v1, 0x3

    if-nez v9, :cond_9

    const/4 v9, 0x0

    goto :goto_5

    .line 1261
    :cond_9
    rem-int/2addr v1, v4

    if-ne v1, v5, :cond_a

    const/4 v9, 0x1

    goto :goto_5

    :cond_a
    const/4 v9, 0x2

    .line 1267
    :goto_5
    iget v11, p0, Lcom/google/android/exoplayer2/text/a/b$b;->A:I

    sget v1, Lcom/google/android/exoplayer2/text/a/b$b;->b:I

    if-eq v11, v1, :cond_b

    const/4 v0, 0x1

    .line 1269
    :cond_b
    new-instance v13, Lcom/google/android/exoplayer2/text/a/b$a;

    const/4 v5, 0x0

    const v12, -0x800001

    iget v14, p0, Lcom/google/android/exoplayer2/text/a/b$b;->j:I

    move-object v1, v13

    move-object v3, v6

    move v4, v7

    move v6, v8

    move v7, v10

    move v8, v9

    move v9, v12

    move v10, v0

    move v12, v14

    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplayer2/text/a/b$a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V

    return-object v13
.end method
