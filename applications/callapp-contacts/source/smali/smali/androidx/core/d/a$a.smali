.class public final Landroidx/core/d/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Landroidx/core/d/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/d/a;->b(Ljava/util/Locale;)Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/core/d/a$a;->a(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-static {p1}, Landroidx/core/d/a;->b(Ljava/util/Locale;)Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/core/d/a$a;->a(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-direct {p0, p1}, Landroidx/core/d/a$a;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Landroidx/core/d/a$a;->a:Z

    .line 168
    sget-object p1, Landroidx/core/d/a;->a:Landroidx/core/d/d;

    iput-object p1, p0, Landroidx/core/d/a$a;->c:Landroidx/core/d/d;

    const/4 p1, 0x2

    .line 169
    iput p1, p0, Landroidx/core/d/a$a;->b:I

    return-void
.end method

.method private static b(Z)Landroidx/core/d/a;
    .locals 0

    if-eqz p0, :cond_0

    .line 198
    sget-object p0, Landroidx/core/d/a;->c:Landroidx/core/d/a;

    return-object p0

    :cond_0
    sget-object p0, Landroidx/core/d/a;->b:Landroidx/core/d/a;

    return-object p0
.end method


# virtual methods
.method public final a()Landroidx/core/d/a;
    .locals 4

    .line 205
    iget v0, p0, Landroidx/core/d/a$a;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/core/d/a$a;->c:Landroidx/core/d/d;

    sget-object v1, Landroidx/core/d/a;->a:Landroidx/core/d/d;

    if-ne v0, v1, :cond_0

    .line 207
    iget-boolean v0, p0, Landroidx/core/d/a$a;->a:Z

    invoke-static {v0}, Landroidx/core/d/a$a;->b(Z)Landroidx/core/d/a;

    move-result-object v0

    return-object v0

    .line 209
    :cond_0
    new-instance v0, Landroidx/core/d/a;

    iget-boolean v1, p0, Landroidx/core/d/a$a;->a:Z

    iget v2, p0, Landroidx/core/d/a$a;->b:I

    iget-object v3, p0, Landroidx/core/d/a$a;->c:Landroidx/core/d/d;

    invoke-direct {v0, v1, v2, v3}, Landroidx/core/d/a;-><init>(ZILandroidx/core/d/d;)V

    return-object v0
.end method
