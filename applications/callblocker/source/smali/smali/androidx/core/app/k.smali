.class public final Landroidx/core/app/k;
.super Ljava/lang/Object;
.source "RemoteInput.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/CharSequence;

.field private final c:[Ljava/lang/CharSequence;

.field private final d:Z

.field private final e:Landroid/os/Bundle;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static a(Landroidx/core/app/k;)Landroid/app/RemoteInput;
    .locals 2

    .prologue
    .line 513
    new-instance v0, Landroid/app/RemoteInput$Builder;

    invoke-virtual {p0}, Landroidx/core/app/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p0}, Landroidx/core/app/k;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    .line 515
    invoke-virtual {p0}, Landroidx/core/app/k;->c()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    .line 516
    invoke-virtual {p0}, Landroidx/core/app/k;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    .line 517
    invoke-virtual {p0}, Landroidx/core/app/k;->f()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    .line 518
    invoke-virtual {v0}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object v0

    .line 513
    return-object v0
.end method

.method static a([Landroidx/core/app/k;)[Landroid/app/RemoteInput;
    .locals 3

    .prologue
    .line 501
    if-nez p0, :cond_0

    .line 502
    const/4 v0, 0x0

    .line 508
    :goto_0
    return-object v0

    .line 504
    :cond_0
    array-length v0, p0

    new-array v1, v0, [Landroid/app/RemoteInput;

    .line 505
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 506
    aget-object v2, p0, v0

    invoke-static {v2}, Landroidx/core/app/k;->a(Landroidx/core/app/k;)Landroid/app/RemoteInput;

    move-result-object v2

    aput-object v2, v1, v0

    .line 505
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 508
    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Landroidx/core/app/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Landroidx/core/app/k;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Landroidx/core/app/k;->c:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Landroidx/core/app/k;->f:Ljava/util/Set;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Landroidx/core/app/k;->d:Z

    return v0
.end method

.method public f()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Landroidx/core/app/k;->e:Landroid/os/Bundle;

    return-object v0
.end method
