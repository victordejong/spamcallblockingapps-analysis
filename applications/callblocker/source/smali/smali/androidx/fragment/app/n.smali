.class final Landroidx/fragment/app/n;
.super Ljava/lang/Object;
.source "FragmentState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroidx/fragment/app/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Z

.field final d:I

.field final e:I

.field final f:Ljava/lang/String;

.field final g:Z

.field final h:Z

.field final i:Z

.field final j:Landroid/os/Bundle;

.field final k:Z

.field final l:I

.field m:Landroid/os/Bundle;

.field n:Landroidx/fragment/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Landroidx/fragment/app/n$1;

    invoke-direct {v0}, Landroidx/fragment/app/n$1;-><init>()V

    sput-object v0, Landroidx/fragment/app/n;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/n;->a:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/n;->b:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroidx/fragment/app/n;->c:Z

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/n;->d:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/n;->e:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/n;->f:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroidx/fragment/app/n;->g:Z

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroidx/fragment/app/n;->h:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroidx/fragment/app/n;->i:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/n;->j:Landroid/os/Bundle;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    iput-boolean v1, p0, Landroidx/fragment/app/n;->k:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/n;->m:Landroid/os/Bundle;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/n;->l:I

    .line 76
    return-void

    :cond_0
    move v0, v2

    .line 65
    goto :goto_0

    :cond_1
    move v0, v2

    .line 69
    goto :goto_1

    :cond_2
    move v0, v2

    .line 70
    goto :goto_2

    :cond_3
    move v0, v2

    .line 71
    goto :goto_3

    :cond_4
    move v1, v2

    .line 73
    goto :goto_4
.end method

.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/n;->a:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/n;->b:Ljava/lang/String;

    .line 50
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->v:Z

    iput-boolean v0, p0, Landroidx/fragment/app/n;->c:Z

    .line 51
    iget v0, p1, Landroidx/fragment/app/Fragment;->E:I

    iput v0, p0, Landroidx/fragment/app/n;->d:I

    .line 52
    iget v0, p1, Landroidx/fragment/app/Fragment;->F:I

    iput v0, p0, Landroidx/fragment/app/n;->e:I

    .line 53
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->G:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/n;->f:Ljava/lang/String;

    .line 54
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->J:Z

    iput-boolean v0, p0, Landroidx/fragment/app/n;->g:Z

    .line 55
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->u:Z

    iput-boolean v0, p0, Landroidx/fragment/app/n;->h:Z

    .line 56
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->I:Z

    iput-boolean v0, p0, Landroidx/fragment/app/n;->i:Z

    .line 57
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->p:Landroid/os/Bundle;

    iput-object v0, p0, Landroidx/fragment/app/n;->j:Landroid/os/Bundle;

    .line 58
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->H:Z

    iput-boolean v0, p0, Landroidx/fragment/app/n;->k:Z

    .line 59
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->Z:Landroidx/lifecycle/e$b;

    invoke-virtual {v0}, Landroidx/lifecycle/e$b;->ordinal()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/n;->l:I

    .line 60
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ClassLoader;Landroidx/fragment/app/g;)Landroidx/fragment/app/Fragment;
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Landroidx/fragment/app/n;->n:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Landroidx/fragment/app/n;->j:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Landroidx/fragment/app/n;->j:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 85
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/n;->a:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/g;->c(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/n;->n:Landroidx/fragment/app/Fragment;

    .line 86
    iget-object v0, p0, Landroidx/fragment/app/n;->n:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Landroidx/fragment/app/n;->j:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->g(Landroid/os/Bundle;)V

    .line 88
    iget-object v0, p0, Landroidx/fragment/app/n;->m:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Landroidx/fragment/app/n;->m:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 90
    iget-object v0, p0, Landroidx/fragment/app/n;->n:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Landroidx/fragment/app/n;->m:Landroid/os/Bundle;

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    .line 97
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/n;->n:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Landroidx/fragment/app/n;->b:Ljava/lang/String;

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Landroidx/fragment/app/n;->n:Landroidx/fragment/app/Fragment;

    iget-boolean v1, p0, Landroidx/fragment/app/n;->c:Z

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->v:Z

    .line 99
    iget-object v0, p0, Landroidx/fragment/app/n;->n:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->x:Z

    .line 100
    iget-object v0, p0, Landroidx/fragment/app/n;->n:Landroidx/fragment/app/Fragment;

    iget v1, p0, Landroidx/fragment/app/n;->d:I

    iput v1, v0, Landroidx/fragment/app/Fragment;->E:I

    .line 101
    iget-object v0, p0, Landroidx/fragment/app/n;->n:Landroidx/fragment/app/Fragment;

    iget v1, p0, Landroidx/fragment/app/n;->e:I

    iput v1, v0, Landroidx/fragment/app/Fragment;->F:I

    .line 102
    iget-object v0, p0, Landroidx/fragment/app/n;->n:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Landroidx/fragment/app/n;->f:Ljava/lang/String;

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->G:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Landroidx/fragment/app/n;->n:Landroidx/fragment/app/Fragment;

    iget-boolean v1, p0, Landroidx/fragment/app/n;->g:Z

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->J:Z

    .line 104
    iget-object v0, p0, Landroidx/fragment/app/n;->n:Landroidx/fragment/app/Fragment;

    iget-boolean v1, p0, Landroidx/fragment/app/n;->h:Z

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->u:Z

    .line 105
    iget-object v0, p0, Landroidx/fragment/app/n;->n:Landroidx/fragment/app/Fragment;

    iget-boolean v1, p0, Landroidx/fragment/app/n;->i:Z

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->I:Z

    .line 106
    iget-object v0, p0, Landroidx/fragment/app/n;->n:Landroidx/fragment/app/Fragment;

    iget-boolean v1, p0, Landroidx/fragment/app/n;->k:Z

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->H:Z

    .line 107
    iget-object v0, p0, Landroidx/fragment/app/n;->n:Landroidx/fragment/app/Fragment;

    invoke-static {}, Landroidx/lifecycle/e$b;->values()[Landroidx/lifecycle/e$b;

    move-result-object v1

    iget v2, p0, Landroidx/fragment/app/n;->l:I

    aget-object v1, v1, v2

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->Z:Landroidx/lifecycle/e$b;

    .line 109
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_1

    .line 110
    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Instantiated fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/n;->n:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/n;->n:Landroidx/fragment/app/Fragment;

    return-object v0

    .line 95
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/n;->n:Landroidx/fragment/app/Fragment;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 120
    const-string/jumbo v1, "FragmentState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v1, p0, Landroidx/fragment/app/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v1, p0, Landroidx/fragment/app/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string/jumbo v1, ")}:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-boolean v1, p0, Landroidx/fragment/app/n;->c:Z

    if-eqz v1, :cond_0

    .line 126
    const-string/jumbo v1, " fromLayout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_0
    iget v1, p0, Landroidx/fragment/app/n;->e:I

    if-eqz v1, :cond_1

    .line 129
    const-string/jumbo v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget v1, p0, Landroidx/fragment/app/n;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/n;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/n;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 133
    const-string/jumbo v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v1, p0, Landroidx/fragment/app/n;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_2
    iget-boolean v1, p0, Landroidx/fragment/app/n;->g:Z

    if-eqz v1, :cond_3

    .line 137
    const-string/jumbo v1, " retainInstance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_3
    iget-boolean v1, p0, Landroidx/fragment/app/n;->h:Z

    if-eqz v1, :cond_4

    .line 140
    const-string/jumbo v1, " removing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_4
    iget-boolean v1, p0, Landroidx/fragment/app/n;->i:Z

    if-eqz v1, :cond_5

    .line 143
    const-string/jumbo v1, " detached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_5
    iget-boolean v1, p0, Landroidx/fragment/app/n;->k:Z

    if-eqz v1, :cond_6

    .line 146
    const-string/jumbo v1, " hidden"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 158
    iget-object v0, p0, Landroidx/fragment/app/n;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Landroidx/fragment/app/n;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-boolean v0, p0, Landroidx/fragment/app/n;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget v0, p0, Landroidx/fragment/app/n;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget v0, p0, Landroidx/fragment/app/n;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object v0, p0, Landroidx/fragment/app/n;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-boolean v0, p0, Landroidx/fragment/app/n;->g:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-boolean v0, p0, Landroidx/fragment/app/n;->h:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-boolean v0, p0, Landroidx/fragment/app/n;->i:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-object v0, p0, Landroidx/fragment/app/n;->j:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 168
    iget-boolean v0, p0, Landroidx/fragment/app/n;->k:Z

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object v0, p0, Landroidx/fragment/app/n;->m:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 170
    iget v0, p0, Landroidx/fragment/app/n;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    return-void

    :cond_0
    move v0, v2

    .line 160
    goto :goto_0

    :cond_1
    move v0, v2

    .line 164
    goto :goto_1

    :cond_2
    move v0, v2

    .line 165
    goto :goto_2

    :cond_3
    move v0, v2

    .line 166
    goto :goto_3

    :cond_4
    move v1, v2

    .line 168
    goto :goto_4
.end method
