.class public final Landroidx/core/a/a/c$c;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;II)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Landroidx/core/a/a/c$c;->a:Ljava/lang/String;

    .line 115
    iput p2, p0, Landroidx/core/a/a/c$c;->b:I

    .line 116
    iput-boolean p3, p0, Landroidx/core/a/a/c$c;->c:Z

    .line 117
    iput-object p4, p0, Landroidx/core/a/a/c$c;->d:Ljava/lang/String;

    .line 118
    iput p5, p0, Landroidx/core/a/a/c$c;->e:I

    .line 119
    iput p6, p0, Landroidx/core/a/a/c$c;->f:I

    .line 120
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Landroidx/core/a/a/c$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Landroidx/core/a/a/c$c;->b:I

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Landroidx/core/a/a/c$c;->c:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Landroidx/core/a/a/c$c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Landroidx/core/a/a/c$c;->e:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Landroidx/core/a/a/c$c;->f:I

    return v0
.end method
