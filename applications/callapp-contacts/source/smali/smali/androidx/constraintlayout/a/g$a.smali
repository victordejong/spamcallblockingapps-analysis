.class final Landroidx/constraintlayout/a/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroidx/constraintlayout/a/h;

.field b:Landroidx/constraintlayout/a/g;

.field final synthetic c:Landroidx/constraintlayout/a/g;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/a/g;Landroidx/constraintlayout/a/g;)V
    .locals 0

    .line 39
    iput-object p1, p0, Landroidx/constraintlayout/a/g$a;->c:Landroidx/constraintlayout/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Landroidx/constraintlayout/a/g$a;->b:Landroidx/constraintlayout/a/g;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 130
    check-cast p1, Landroidx/constraintlayout/a/h;

    .line 131
    iget-object v0, p0, Landroidx/constraintlayout/a/g$a;->a:Landroidx/constraintlayout/a/h;

    iget v0, v0, Landroidx/constraintlayout/a/h;->b:I

    iget p1, p1, Landroidx/constraintlayout/a/h;->b:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 140
    iget-object v0, p0, Landroidx/constraintlayout/a/g$a;->a:Landroidx/constraintlayout/a/h;

    const-string v1, "[ "

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/a/g$a;->a:Landroidx/constraintlayout/a/h;

    iget-object v1, v1, Landroidx/constraintlayout/a/h;->h:[F

    aget v1, v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/a/g$a;->a:Landroidx/constraintlayout/a/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
