.class public final Landroidx/core/app/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/CharSequence;

.field final c:[Ljava/lang/CharSequence;

.field final d:Z

.field final e:Landroid/os/Bundle;

.field final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/CharSequence;",
            "ZI",
            "Landroid/os/Bundle;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Landroidx/core/app/l;->a:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Landroidx/core/app/l;->b:Ljava/lang/CharSequence;

    .line 99
    iput-object p3, p0, Landroidx/core/app/l;->c:[Ljava/lang/CharSequence;

    .line 100
    iput-boolean p4, p0, Landroidx/core/app/l;->d:Z

    .line 101
    iput p5, p0, Landroidx/core/app/l;->g:I

    .line 102
    iput-object p6, p0, Landroidx/core/app/l;->e:Landroid/os/Bundle;

    .line 103
    iput-object p7, p0, Landroidx/core/app/l;->f:Ljava/util/Set;

    const/4 p1, 0x2

    if-ne p5, p1, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "setEditChoicesBeforeSending requires setAllowFreeFormInput"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method static a([Landroidx/core/app/l;)[Landroid/app/RemoteInput;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 552
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Landroid/app/RemoteInput;

    const/4 v1, 0x0

    .line 553
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 554
    aget-object v2, p0, v1

    .line 2561
    new-instance v3, Landroid/app/RemoteInput$Builder;

    .line 3116
    iget-object v4, v2, Landroidx/core/app/l;->a:Ljava/lang/String;

    .line 2562
    invoke-direct {v3, v4}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 3123
    iget-object v4, v2, Landroidx/core/app/l;->b:Ljava/lang/CharSequence;

    .line 2563
    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    .line 3130
    iget-object v4, v2, Landroidx/core/app/l;->c:[Ljava/lang/CharSequence;

    .line 2564
    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    .line 3156
    iget-boolean v4, v2, Landroidx/core/app/l;->d:Z

    .line 2565
    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    .line 3171
    iget-object v4, v2, Landroidx/core/app/l;->e:Landroid/os/Bundle;

    .line 2566
    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    .line 2567
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_1

    .line 4164
    iget v2, v2, Landroidx/core/app/l;->g:I

    .line 2568
    invoke-virtual {v3, v2}, Landroid/app/RemoteInput$Builder;->setEditChoicesBeforeSending(I)Landroid/app/RemoteInput$Builder;

    .line 2570
    :cond_1
    invoke-virtual {v3}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object v2

    .line 554
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
