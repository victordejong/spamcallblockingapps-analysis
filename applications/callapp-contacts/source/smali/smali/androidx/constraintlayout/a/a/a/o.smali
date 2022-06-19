.class public final Landroidx/constraintlayout/a/a/a/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/a/a/a/o$a;
    }
.end annotation


# static fields
.field static b:I


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/a/a/e;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field public d:Z

.field public e:I

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/a/a/a/o$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/a/a/a/o;->a:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Landroidx/constraintlayout/a/a/a/o;->c:I

    const/4 v1, 0x0

    .line 38
    iput-boolean v1, p0, Landroidx/constraintlayout/a/a/a/o;->d:Z

    .line 39
    iput v1, p0, Landroidx/constraintlayout/a/a/a/o;->e:I

    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Landroidx/constraintlayout/a/a/a/o;->f:Ljava/util/ArrayList;

    .line 41
    iput v0, p0, Landroidx/constraintlayout/a/a/a/o;->g:I

    .line 44
    sget v0, Landroidx/constraintlayout/a/a/a/o;->b:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroidx/constraintlayout/a/a/a/o;->b:I

    iput v0, p0, Landroidx/constraintlayout/a/a/a/o;->c:I

    .line 45
    iput p1, p0, Landroidx/constraintlayout/a/a/a/o;->e:I

    return-void
.end method

.method private a(Landroidx/constraintlayout/a/d;Ljava/util/ArrayList;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/a/d;",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/a/a/e;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/a/a/e;

    .line 3620
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->S:Landroidx/constraintlayout/a/a/e;

    .line 128
    check-cast v1, Landroidx/constraintlayout/a/a/f;

    .line 129
    invoke-virtual {p1}, Landroidx/constraintlayout/a/d;->b()V

    .line 131
    invoke-virtual {v1, p1, v0}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/d;Z)V

    const/4 v2, 0x0

    .line 132
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 133
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/a/a/e;

    .line 134
    invoke-virtual {v3, p1, v0}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/d;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 137
    iget v2, v1, Landroidx/constraintlayout/a/a/f;->aO:I

    if-lez v2, :cond_1

    .line 138
    invoke-static {v1, p1, p2, v0}, Landroidx/constraintlayout/a/a/b;->a(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/d;Ljava/util/ArrayList;I)V

    :cond_1
    const/4 v2, 0x1

    if-ne p3, v2, :cond_2

    .line 142
    iget v3, v1, Landroidx/constraintlayout/a/a/f;->aP:I

    if-lez v3, :cond_2

    .line 143
    invoke-static {v1, p1, p2, v2}, Landroidx/constraintlayout/a/a/b;->a(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/d;Ljava/util/ArrayList;I)V

    .line 148
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroidx/constraintlayout/a/d;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 150
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/a/a/a/o;->f:Ljava/util/ArrayList;

    .line 155
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 156
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/a/a/e;

    .line 157
    new-instance v3, Landroidx/constraintlayout/a/a/a/o$a;

    invoke-direct {v3, p0, v2, p1, p3}, Landroidx/constraintlayout/a/a/a/o$a;-><init>(Landroidx/constraintlayout/a/a/a/o;Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/d;I)V

    .line 158
    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/o;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    if-nez p3, :cond_4

    .line 162
    iget-object p2, v1, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/d;

    invoke-static {p2}, Landroidx/constraintlayout/a/d;->b(Ljava/lang/Object;)I

    move-result p2

    .line 163
    iget-object p3, v1, Landroidx/constraintlayout/a/a/f;->J:Landroidx/constraintlayout/a/a/d;

    invoke-static {p3}, Landroidx/constraintlayout/a/d;->b(Ljava/lang/Object;)I

    move-result p3

    .line 164
    invoke-virtual {p1}, Landroidx/constraintlayout/a/d;->b()V

    :goto_3
    sub-int/2addr p3, p2

    return p3

    .line 167
    :cond_4
    iget-object p2, v1, Landroidx/constraintlayout/a/a/f;->I:Landroidx/constraintlayout/a/a/d;

    invoke-static {p2}, Landroidx/constraintlayout/a/d;->b(Ljava/lang/Object;)I

    move-result p2

    .line 168
    iget-object p3, v1, Landroidx/constraintlayout/a/a/f;->K:Landroidx/constraintlayout/a/a/d;

    invoke-static {p3}, Landroidx/constraintlayout/a/d;->b(Ljava/lang/Object;)I

    move-result p3

    .line 169
    invoke-virtual {p1}, Landroidx/constraintlayout/a/d;->b()V

    goto :goto_3
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/a/d;I)I
    .locals 1

    .line 119
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 124
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/o;->a:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, p2}, Landroidx/constraintlayout/a/a/a/o;->a(Landroidx/constraintlayout/a/d;Ljava/util/ArrayList;I)I

    move-result p1

    return p1
.end method

.method public final a(ILandroidx/constraintlayout/a/a/a/o;)V
    .locals 3

    .line 87
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/a/a/e;

    .line 88
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/a/a/a/o;->a(Landroidx/constraintlayout/a/a/e;)Z

    if-nez p1, :cond_0

    .line 2049
    iget v2, p2, Landroidx/constraintlayout/a/a/a/o;->c:I

    .line 90
    iput v2, v1, Landroidx/constraintlayout/a/a/e;->aG:I

    goto :goto_0

    .line 3049
    :cond_0
    iget v2, p2, Landroidx/constraintlayout/a/a/a/o;->c:I

    .line 92
    iput v2, v1, Landroidx/constraintlayout/a/a/e;->aH:I

    goto :goto_0

    .line 95
    :cond_1
    iget p1, p2, Landroidx/constraintlayout/a/a/a/o;->c:I

    iput p1, p0, Landroidx/constraintlayout/a/a/a/o;->g:I

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/a/a/a/o;",
            ">;)V"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 211
    iget v1, p0, Landroidx/constraintlayout/a/a/a/o;->g:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-lez v0, :cond_1

    const/4 v1, 0x0

    .line 212
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 213
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/a/a/a/o;

    .line 214
    iget v3, p0, Landroidx/constraintlayout/a/a/a/o;->g:I

    iget v4, v2, Landroidx/constraintlayout/a/a/a/o;->c:I

    if-ne v3, v4, :cond_0

    .line 215
    iget v3, p0, Landroidx/constraintlayout/a/a/a/o;->e:I

    invoke-virtual {p0, v3, v2}, Landroidx/constraintlayout/a/a/a/o;->a(ILandroidx/constraintlayout/a/a/a/o;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 220
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/a/e;)Z
    .locals 1

    .line 52
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 55
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1063
    iget v1, p0, Landroidx/constraintlayout/a/a/a/o;->e:I

    if-nez v1, :cond_0

    const-string v1, "Horizontal"

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "Vertical"

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const-string v1, "Both"

    goto :goto_0

    :cond_2
    const-string v1, "Unknown"

    .line 75
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/a/a/a/o;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/a/a/e;

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1723
    iget-object v0, v2, Landroidx/constraintlayout/a/a/e;->al:Ljava/lang/String;

    .line 77
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 79
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " >"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
