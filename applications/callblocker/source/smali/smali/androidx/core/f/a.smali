.class public final Landroidx/core/f/a;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/f/a$b;,
        Landroidx/core/f/a$a;
    }
.end annotation


# static fields
.field static final a:Landroidx/core/f/d;

.field static final b:Landroidx/core/f/a;

.field static final c:Landroidx/core/f/a;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;


# instance fields
.field private final f:Z

.field private final g:I

.field private final h:Landroidx/core/f/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 85
    sget-object v0, Landroidx/core/f/e;->c:Landroidx/core/f/d;

    sput-object v0, Landroidx/core/f/a;->a:Landroidx/core/f/d;

    .line 115
    const/16 v0, 0x200e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/f/a;->d:Ljava/lang/String;

    .line 120
    const/16 v0, 0x200f

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/f/a;->e:Ljava/lang/String;

    .line 217
    new-instance v0, Landroidx/core/f/a;

    const/4 v1, 0x0

    sget-object v2, Landroidx/core/f/a;->a:Landroidx/core/f/d;

    invoke-direct {v0, v1, v3, v2}, Landroidx/core/f/a;-><init>(ZILandroidx/core/f/d;)V

    sput-object v0, Landroidx/core/f/a;->b:Landroidx/core/f/a;

    .line 222
    new-instance v0, Landroidx/core/f/a;

    const/4 v1, 0x1

    sget-object v2, Landroidx/core/f/a;->a:Landroidx/core/f/d;

    invoke-direct {v0, v1, v3, v2}, Landroidx/core/f/a;-><init>(ZILandroidx/core/f/d;)V

    sput-object v0, Landroidx/core/f/a;->c:Landroidx/core/f/a;

    return-void
.end method

.method constructor <init>(ZILandroidx/core/f/d;)V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-boolean p1, p0, Landroidx/core/f/a;->f:Z

    .line 264
    iput p2, p0, Landroidx/core/f/a;->g:I

    .line 265
    iput-object p3, p0, Landroidx/core/f/a;->h:Landroidx/core/f/d;

    .line 266
    return-void
.end method

.method public static a()Landroidx/core/f/a;
    .locals 1

    .prologue
    .line 236
    new-instance v0, Landroidx/core/f/a$a;

    invoke-direct {v0}, Landroidx/core/f/a$a;-><init>()V

    invoke-virtual {v0}, Landroidx/core/f/a$a;->a()Landroidx/core/f/a;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/CharSequence;Landroidx/core/f/d;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Landroidx/core/f/d;->a(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 302
    iget-boolean v1, p0, Landroidx/core/f/a;->f:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    invoke-static {p1}, Landroidx/core/f/a;->b(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 303
    :cond_0
    sget-object v0, Landroidx/core/f/a;->d:Ljava/lang/String;

    .line 308
    :goto_0
    return-object v0

    .line 305
    :cond_1
    iget-boolean v1, p0, Landroidx/core/f/a;->f:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroidx/core/f/a;->b(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 306
    :cond_2
    sget-object v0, Landroidx/core/f/a;->e:Ljava/lang/String;

    goto :goto_0

    .line 308
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method static a(Ljava/util/Locale;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 516
    invoke-static {p0}, Landroidx/core/f/f;->a(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/CharSequence;)I
    .locals 2

    .prologue
    .line 541
    new-instance v0, Landroidx/core/f/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/core/f/a$b;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, Landroidx/core/f/a$b;->b()I

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/CharSequence;Landroidx/core/f/d;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 328
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Landroidx/core/f/d;->a(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 330
    iget-boolean v1, p0, Landroidx/core/f/a;->f:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    invoke-static {p1}, Landroidx/core/f/a;->c(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 331
    :cond_0
    sget-object v0, Landroidx/core/f/a;->d:Ljava/lang/String;

    .line 336
    :goto_0
    return-object v0

    .line 333
    :cond_1
    iget-boolean v1, p0, Landroidx/core/f/a;->f:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroidx/core/f/a;->c(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 334
    :cond_2
    sget-object v0, Landroidx/core/f/a;->e:Ljava/lang/String;

    goto :goto_0

    .line 336
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static c(Ljava/lang/CharSequence;)I
    .locals 2

    .prologue
    .line 558
    new-instance v0, Landroidx/core/f/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/core/f/a$b;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, Landroidx/core/f/a$b;->a()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Landroidx/core/f/a;->h:Landroidx/core/f/d;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroidx/core/f/a;->a(Ljava/lang/CharSequence;Landroidx/core/f/d;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;Landroidx/core/f/d;Z)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 411
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 429
    :goto_0
    return-object v0

    .line 412
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Landroidx/core/f/d;->a(Ljava/lang/CharSequence;II)Z

    move-result v2

    .line 413
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 414
    invoke-virtual {p0}, Landroidx/core/f/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 415
    if-eqz v2, :cond_3

    sget-object v0, Landroidx/core/f/e;->b:Landroidx/core/f/d;

    :goto_1
    invoke-direct {p0, p1, v0}, Landroidx/core/f/a;->b(Ljava/lang/CharSequence;Landroidx/core/f/d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 418
    :cond_1
    iget-boolean v0, p0, Landroidx/core/f/a;->f:Z

    if-eq v2, v0, :cond_5

    .line 419
    if-eqz v2, :cond_4

    const/16 v0, 0x202b

    :goto_2
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 420
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 421
    const/16 v0, 0x202c

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 425
    :goto_3
    if-eqz p3, :cond_2

    .line 426
    if-eqz v2, :cond_6

    sget-object v0, Landroidx/core/f/e;->b:Landroidx/core/f/d;

    :goto_4
    invoke-direct {p0, p1, v0}, Landroidx/core/f/a;->a(Ljava/lang/CharSequence;Landroidx/core/f/d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    move-object v0, v1

    .line 429
    goto :goto_0

    .line 415
    :cond_3
    sget-object v0, Landroidx/core/f/e;->a:Landroidx/core/f/d;

    goto :goto_1

    .line 419
    :cond_4
    const/16 v0, 0x202a

    goto :goto_2

    .line 423
    :cond_5
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    .line 426
    :cond_6
    sget-object v0, Landroidx/core/f/e;->a:Landroidx/core/f/d;

    goto :goto_4
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Landroidx/core/f/a;->g:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
