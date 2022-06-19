.class public abstract Landroidx/fragment/app/o;
.super Ljava/lang/Object;
.source "FragmentTransaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/o$a;
    }
.end annotation


# instance fields
.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/o$a;",
            ">;"
        }
    .end annotation
.end field

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:Z

.field l:Z

.field m:Ljava/lang/String;

.field n:I

.field o:Ljava/lang/CharSequence;

.field p:I

.field q:Ljava/lang/CharSequence;

.field r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field t:Z

.field u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/o;->d:Ljava/util/ArrayList;

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/o;->l:Z

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/o;->t:Z

    return-void
.end method


# virtual methods
.method public a(II)Landroidx/fragment/app/o;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 403
    invoke-virtual {p0, p1, p2, v0, v0}, Landroidx/fragment/app/o;->a(IIII)Landroidx/fragment/app/o;

    move-result-object v0

    return-object v0
.end method

.method public a(IIII)Landroidx/fragment/app/o;
    .locals 0

    .prologue
    .line 427
    iput p1, p0, Landroidx/fragment/app/o;->e:I

    .line 428
    iput p2, p0, Landroidx/fragment/app/o;->f:I

    .line 429
    iput p3, p0, Landroidx/fragment/app/o;->g:I

    .line 430
    iput p4, p0, Landroidx/fragment/app/o;->h:I

    .line 431
    return-object p0
.end method

.method public a(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/fragment/app/o;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 135
    return-object p0
.end method

.method public a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/o;
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/o;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 157
    return-object p0
.end method

.method public a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;
    .locals 2

    .prologue
    .line 239
    new-instance v0, Landroidx/fragment/app/o$a;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/o$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/o$a;)V

    .line 241
    return-object p0
.end method

.method public a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/e$b;)Landroidx/fragment/app/o;
    .locals 2

    .prologue
    .line 350
    new-instance v0, Landroidx/fragment/app/o$a;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p1, p2}, Landroidx/fragment/app/o$a;-><init>(ILandroidx/fragment/app/Fragment;Landroidx/lifecycle/e$b;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/o$a;)V

    .line 351
    return-object p0
.end method

.method public a(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/o;
    .locals 2

    .prologue
    .line 125
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Landroidx/fragment/app/o;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 126
    return-object p0
.end method

.method a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 161
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    .line 163
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " must be a public static class to be  properly recreated from instance state."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    :cond_1
    if-eqz p3, :cond_3

    .line 171
    iget-object v0, p2, Landroidx/fragment/app/Fragment;->G:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p2, Landroidx/fragment/app/Fragment;->G:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 172
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t change tag of fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroidx/fragment/app/Fragment;->G:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_2
    iput-object p3, p2, Landroidx/fragment/app/Fragment;->G:Ljava/lang/String;

    .line 179
    :cond_3
    if-eqz p1, :cond_6

    .line 180
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t add fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to container view with no id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_4
    iget v0, p2, Landroidx/fragment/app/Fragment;->E:I

    if-eqz v0, :cond_5

    iget v0, p2, Landroidx/fragment/app/Fragment;->E:I

    if-eq v0, p1, :cond_5

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t change container ID of fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroidx/fragment/app/Fragment;->E:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_5
    iput p1, p2, Landroidx/fragment/app/Fragment;->E:I

    iput p1, p2, Landroidx/fragment/app/Fragment;->F:I

    .line 192
    :cond_6
    new-instance v0, Landroidx/fragment/app/o$a;

    invoke-direct {v0, p4, p2}, Landroidx/fragment/app/o$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/o$a;)V

    .line 193
    return-void
.end method

.method a(Landroidx/fragment/app/o$a;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Landroidx/fragment/app/o;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget v0, p0, Landroidx/fragment/app/o;->e:I

    iput v0, p1, Landroidx/fragment/app/o$a;->c:I

    .line 115
    iget v0, p0, Landroidx/fragment/app/o;->f:I

    iput v0, p1, Landroidx/fragment/app/o$a;->d:I

    .line 116
    iget v0, p0, Landroidx/fragment/app/o;->g:I

    iput v0, p1, Landroidx/fragment/app/o$a;->e:I

    .line 117
    iget v0, p0, Landroidx/fragment/app/o;->h:I

    iput v0, p1, Landroidx/fragment/app/o$a;->f:I

    .line 118
    return-void
.end method

.method public abstract b()I
.end method

.method public b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/o;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/o;

    move-result-object v0

    return-object v0
.end method

.method public b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/o;
    .locals 2

    .prologue
    .line 222
    if-nez p1, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/o;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 226
    return-object p0
.end method

.method public b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;
    .locals 2

    .prologue
    .line 255
    new-instance v0, Landroidx/fragment/app/o$a;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/o$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/o$a;)V

    .line 257
    return-object p0
.end method

.method public abstract c()I
.end method

.method public c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;
    .locals 2

    .prologue
    .line 271
    new-instance v0, Landroidx/fragment/app/o$a;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/o$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/o$a;)V

    .line 273
    return-object p0
.end method

.method public d(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;
    .locals 2

    .prologue
    .line 289
    new-instance v0, Landroidx/fragment/app/o$a;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/o$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/o$a;)V

    .line 291
    return-object p0
.end method

.method public abstract d()V
.end method

.method public e(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;
    .locals 2

    .prologue
    .line 306
    new-instance v0, Landroidx/fragment/app/o$a;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/o$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/o$a;)V

    .line 308
    return-object p0
.end method

.method public abstract e()V
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Landroidx/fragment/app/o;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public j()Landroidx/fragment/app/o;
    .locals 2

    .prologue
    .line 532
    iget-boolean v0, p0, Landroidx/fragment/app/o;->k:Z

    if-eqz v0, :cond_0

    .line 533
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/o;->l:Z

    .line 537
    return-object p0
.end method
