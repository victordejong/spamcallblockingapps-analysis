.class public final Landroidx/core/app/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/k$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/CharSequence;

.field b:Landroidx/core/graphics/drawable/IconCompat;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Z

.field f:Z


# direct methods
.method constructor <init>(Landroidx/core/app/k$a;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iget-object v0, p1, Landroidx/core/app/k$a;->a:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/core/app/k;->a:Ljava/lang/CharSequence;

    .line 117
    iget-object v0, p1, Landroidx/core/app/k$a;->b:Landroidx/core/graphics/drawable/IconCompat;

    iput-object v0, p0, Landroidx/core/app/k;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 118
    iget-object v0, p1, Landroidx/core/app/k$a;->c:Ljava/lang/String;

    iput-object v0, p0, Landroidx/core/app/k;->c:Ljava/lang/String;

    .line 119
    iget-object v0, p1, Landroidx/core/app/k$a;->d:Ljava/lang/String;

    iput-object v0, p0, Landroidx/core/app/k;->d:Ljava/lang/String;

    .line 120
    iget-boolean v0, p1, Landroidx/core/app/k$a;->e:Z

    iput-boolean v0, p0, Landroidx/core/app/k;->e:Z

    .line 121
    iget-boolean p1, p1, Landroidx/core/app/k$a;->f:Z

    iput-boolean p1, p0, Landroidx/core/app/k;->f:Z

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 3

    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    iget-object v1, p0, Landroidx/core/app/k;->a:Ljava/lang/CharSequence;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 132
    iget-object v1, p0, Landroidx/core/app/k;->b:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/core/graphics/drawable/IconCompat;->d()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "icon"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 133
    iget-object v1, p0, Landroidx/core/app/k;->c:Ljava/lang/String;

    const-string v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Landroidx/core/app/k;->d:Ljava/lang/String;

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-boolean v1, p0, Landroidx/core/app/k;->e:Z

    const-string v2, "isBot"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    iget-boolean v1, p0, Landroidx/core/app/k;->f:Z

    const-string v2, "isImportant"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final b()Landroid/app/Person;
    .locals 2

    .line 175
    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    .line 1191
    iget-object v1, p0, Landroidx/core/app/k;->a:Ljava/lang/CharSequence;

    .line 176
    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v0

    .line 1197
    iget-object v1, p0, Landroidx/core/app/k;->b:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v1, :cond_0

    .line 2505
    invoke-virtual {v1}, Landroidx/core/graphics/drawable/IconCompat;->c()Landroid/graphics/drawable/Icon;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 177
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;

    move-result-object v0

    .line 3215
    iget-object v1, p0, Landroidx/core/app/k;->c:Ljava/lang/String;

    .line 178
    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v0

    .line 3224
    iget-object v1, p0, Landroidx/core/app/k;->d:Ljava/lang/String;

    .line 179
    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setKey(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v0

    .line 3232
    iget-boolean v1, p0, Landroidx/core/app/k;->e:Z

    .line 180
    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setBot(Z)Landroid/app/Person$Builder;

    move-result-object v0

    .line 3240
    iget-boolean v1, p0, Landroidx/core/app/k;->f:Z

    .line 181
    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setImportant(Z)Landroid/app/Person$Builder;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v0

    return-object v0
.end method
