.class final Landroidx/media2/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/widget/c$a;,
        Landroidx/media2/widget/c$c;,
        Landroidx/media2/widget/c$b;,
        Landroidx/media2/widget/c$e;,
        Landroidx/media2/widget/c$f;,
        Landroidx/media2/widget/c$g;,
        Landroidx/media2/widget/c$d;
    }
.end annotation


# static fields
.field private static final g:Z


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Landroidx/media2/widget/c$c;

.field e:Landroidx/media2/widget/c$c;

.field f:Landroidx/media2/widget/c$c;

.field private final h:Landroidx/media2/widget/c$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Cea608CCParser"

    const/4 v1, 0x3

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/widget/c;->g:Z

    return-void
.end method

.method constructor <init>(Landroidx/media2/widget/c$d;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 77
    iput v0, p0, Landroidx/media2/widget/c;->a:I

    const/4 v0, 0x4

    .line 78
    iput v0, p0, Landroidx/media2/widget/c;->b:I

    const/4 v0, -0x1

    .line 79
    iput v0, p0, Landroidx/media2/widget/c;->c:I

    .line 81
    new-instance v0, Landroidx/media2/widget/c$c;

    invoke-direct {v0}, Landroidx/media2/widget/c$c;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/c;->d:Landroidx/media2/widget/c$c;

    .line 82
    new-instance v0, Landroidx/media2/widget/c$c;

    invoke-direct {v0}, Landroidx/media2/widget/c$c;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/c;->e:Landroidx/media2/widget/c$c;

    .line 83
    new-instance v0, Landroidx/media2/widget/c$c;

    invoke-direct {v0}, Landroidx/media2/widget/c$c;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/c;->f:Landroidx/media2/widget/c$c;

    .line 86
    iput-object p1, p0, Landroidx/media2/widget/c;->h:Landroidx/media2/widget/c$d;

    return-void
.end method


# virtual methods
.method a()Landroidx/media2/widget/c$c;
    .locals 2

    .line 115
    iget v0, p0, Landroidx/media2/widget/c;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unrecoginized mode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/media2/widget/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cea608CCParser"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Landroidx/media2/widget/c;->d:Landroidx/media2/widget/c$c;

    return-object v0

    .line 121
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/c;->f:Landroidx/media2/widget/c$c;

    return-object v0

    .line 117
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/c;->e:Landroidx/media2/widget/c$c;

    return-object v0

    .line 124
    :cond_2
    iget-object v0, p0, Landroidx/media2/widget/c;->d:Landroidx/media2/widget/c$c;

    return-object v0
.end method

.method b()V
    .locals 3

    .line 269
    iget-object v0, p0, Landroidx/media2/widget/c;->h:Landroidx/media2/widget/c$d;

    if-eqz v0, :cond_0

    .line 270
    invoke-interface {v0}, Landroidx/media2/widget/c$d;->a()Landroidx/media2/widget/b;

    move-result-object v0

    .line 271
    iget-object v1, p0, Landroidx/media2/widget/c;->h:Landroidx/media2/widget/c$d;

    iget-object v2, p0, Landroidx/media2/widget/c;->d:Landroidx/media2/widget/c$c;

    invoke-virtual {v2, v0}, Landroidx/media2/widget/c$c;->a(Landroidx/media2/widget/b;)[Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-interface {v1, v0}, Landroidx/media2/widget/c$d;->a([Landroid/text/SpannableStringBuilder;)V

    :cond_0
    return-void
.end method
