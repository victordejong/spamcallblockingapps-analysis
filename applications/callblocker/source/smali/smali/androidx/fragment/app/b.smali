.class final Landroidx/fragment/app/b;
.super Ljava/lang/Object;
.source "BackStackState.java"

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
            "Landroidx/fragment/app/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:[I

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final c:[I

.field final d:[I

.field final e:I

.field final f:I

.field final g:Ljava/lang/String;

.field final h:I

.field final i:I

.field final j:Ljava/lang/CharSequence;

.field final k:I

.field final l:Ljava/lang/CharSequence;

.field final m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    new-instance v0, Landroidx/fragment/app/b$1;

    invoke-direct {v0}, Landroidx/fragment/app/b$1;-><init>()V

    sput-object v0, Landroidx/fragment/app/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->a:[I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->b:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->c:[I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->d:[I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/b;->e:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/b;->f:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->g:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/b;->h:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/b;->i:I

    .line 93
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/b;->j:Ljava/lang/CharSequence;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/b;->k:I

    .line 95
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/b;->l:Ljava/lang/CharSequence;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->m:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->n:Ljava/util/ArrayList;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroidx/fragment/app/b;->o:Z

    .line 99
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroidx/fragment/app/a;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iget-object v1, p1, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 49
    mul-int/lit8 v1, v3, 0x5

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/fragment/app/b;->a:[I

    .line 51
    iget-boolean v1, p1, Landroidx/fragment/app/a;->k:Z

    if-nez v1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not on back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/fragment/app/b;->b:Ljava/util/ArrayList;

    .line 56
    new-array v1, v3, [I

    iput-object v1, p0, Landroidx/fragment/app/b;->c:[I

    .line 57
    new-array v1, v3, [I

    iput-object v1, p0, Landroidx/fragment/app/b;->d:[I

    move v2, v0

    move v1, v0

    .line 59
    :goto_0
    if-ge v2, v3, :cond_2

    .line 60
    iget-object v0, p1, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/o$a;

    .line 61
    iget-object v4, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v5, v1, 0x1

    iget v6, v0, Landroidx/fragment/app/o$a;->a:I

    aput v6, v4, v1

    .line 62
    iget-object v4, p0, Landroidx/fragment/app/b;->b:Ljava/util/ArrayList;

    iget-object v1, v0, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v1, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v4, v5, 0x1

    iget v6, v0, Landroidx/fragment/app/o$a;->c:I

    aput v6, v1, v5

    .line 64
    iget-object v1, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v5, v4, 0x1

    iget v6, v0, Landroidx/fragment/app/o$a;->d:I

    aput v6, v1, v4

    .line 65
    iget-object v1, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v4, v5, 0x1

    iget v6, v0, Landroidx/fragment/app/o$a;->e:I

    aput v6, v1, v5

    .line 66
    iget-object v5, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v1, v4, 0x1

    iget v6, v0, Landroidx/fragment/app/o$a;->f:I

    aput v6, v5, v4

    .line 67
    iget-object v4, p0, Landroidx/fragment/app/b;->c:[I

    iget-object v5, v0, Landroidx/fragment/app/o$a;->g:Landroidx/lifecycle/e$b;

    invoke-virtual {v5}, Landroidx/lifecycle/e$b;->ordinal()I

    move-result v5

    aput v5, v4, v2

    .line 68
    iget-object v4, p0, Landroidx/fragment/app/b;->d:[I

    iget-object v0, v0, Landroidx/fragment/app/o$a;->h:Landroidx/lifecycle/e$b;

    invoke-virtual {v0}, Landroidx/lifecycle/e$b;->ordinal()I

    move-result v0

    aput v0, v4, v2

    .line 59
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 62
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 70
    :cond_2
    iget v0, p1, Landroidx/fragment/app/a;->i:I

    iput v0, p0, Landroidx/fragment/app/b;->e:I

    .line 71
    iget v0, p1, Landroidx/fragment/app/a;->j:I

    iput v0, p0, Landroidx/fragment/app/b;->f:I

    .line 72
    iget-object v0, p1, Landroidx/fragment/app/a;->m:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/b;->g:Ljava/lang/String;

    .line 73
    iget v0, p1, Landroidx/fragment/app/a;->c:I

    iput v0, p0, Landroidx/fragment/app/b;->h:I

    .line 74
    iget v0, p1, Landroidx/fragment/app/a;->n:I

    iput v0, p0, Landroidx/fragment/app/b;->i:I

    .line 75
    iget-object v0, p1, Landroidx/fragment/app/a;->o:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/b;->j:Ljava/lang/CharSequence;

    .line 76
    iget v0, p1, Landroidx/fragment/app/a;->p:I

    iput v0, p0, Landroidx/fragment/app/b;->k:I

    .line 77
    iget-object v0, p1, Landroidx/fragment/app/a;->q:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/b;->l:Ljava/lang/CharSequence;

    .line 78
    iget-object v0, p1, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/fragment/app/b;->m:Ljava/util/ArrayList;

    .line 79
    iget-object v0, p1, Landroidx/fragment/app/a;->s:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/fragment/app/b;->n:Ljava/util/ArrayList;

    .line 80
    iget-boolean v0, p1, Landroidx/fragment/app/a;->t:Z

    iput-boolean v0, p0, Landroidx/fragment/app/b;->o:Z

    .line 81
    return-void
.end method


# virtual methods
.method public a(Landroidx/fragment/app/j;)Landroidx/fragment/app/a;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 102
    new-instance v3, Landroidx/fragment/app/a;

    invoke-direct {v3, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/j;)V

    move v1, v0

    move v2, v0

    .line 105
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/b;->a:[I

    array-length v0, v0

    if-ge v2, v0, :cond_2

    .line 106
    new-instance v4, Landroidx/fragment/app/o$a;

    invoke-direct {v4}, Landroidx/fragment/app/o$a;-><init>()V

    .line 107
    iget-object v0, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v5, v2, 0x1

    aget v0, v0, v2

    iput v0, v4, Landroidx/fragment/app/o$a;->a:I

    .line 108
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Instantiate "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " op #"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " base fragment #"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Landroidx/fragment/app/b;->a:[I

    aget v6, v6, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    if-eqz v0, :cond_1

    .line 112
    iget-object v2, p1, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 113
    iput-object v0, v4, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    .line 117
    :goto_1
    invoke-static {}, Landroidx/lifecycle/e$b;->values()[Landroidx/lifecycle/e$b;

    move-result-object v0

    iget-object v2, p0, Landroidx/fragment/app/b;->c:[I

    aget v2, v2, v1

    aget-object v0, v0, v2

    iput-object v0, v4, Landroidx/fragment/app/o$a;->g:Landroidx/lifecycle/e$b;

    .line 118
    invoke-static {}, Landroidx/lifecycle/e$b;->values()[Landroidx/lifecycle/e$b;

    move-result-object v0

    iget-object v2, p0, Landroidx/fragment/app/b;->d:[I

    aget v2, v2, v1

    aget-object v0, v0, v2

    iput-object v0, v4, Landroidx/fragment/app/o$a;->h:Landroidx/lifecycle/e$b;

    .line 119
    iget-object v0, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v2, v5, 0x1

    aget v0, v0, v5

    iput v0, v4, Landroidx/fragment/app/o$a;->c:I

    .line 120
    iget-object v0, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v5, v2, 0x1

    aget v0, v0, v2

    iput v0, v4, Landroidx/fragment/app/o$a;->d:I

    .line 121
    iget-object v0, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v6, v5, 0x1

    aget v0, v0, v5

    iput v0, v4, Landroidx/fragment/app/o$a;->e:I

    .line 122
    iget-object v0, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v2, v6, 0x1

    aget v0, v0, v6

    iput v0, v4, Landroidx/fragment/app/o$a;->f:I

    .line 123
    iget v0, v4, Landroidx/fragment/app/o$a;->c:I

    iput v0, v3, Landroidx/fragment/app/a;->e:I

    .line 124
    iget v0, v4, Landroidx/fragment/app/o$a;->d:I

    iput v0, v3, Landroidx/fragment/app/a;->f:I

    .line 125
    iget v0, v4, Landroidx/fragment/app/o$a;->e:I

    iput v0, v3, Landroidx/fragment/app/a;->g:I

    .line 126
    iget v0, v4, Landroidx/fragment/app/o$a;->f:I

    iput v0, v3, Landroidx/fragment/app/a;->h:I

    .line 127
    invoke-virtual {v3, v4}, Landroidx/fragment/app/a;->a(Landroidx/fragment/app/o$a;)V

    .line 128
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 129
    goto/16 :goto_0

    .line 115
    :cond_1
    const/4 v0, 0x0

    iput-object v0, v4, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    goto :goto_1

    .line 130
    :cond_2
    iget v0, p0, Landroidx/fragment/app/b;->e:I

    iput v0, v3, Landroidx/fragment/app/a;->i:I

    .line 131
    iget v0, p0, Landroidx/fragment/app/b;->f:I

    iput v0, v3, Landroidx/fragment/app/a;->j:I

    .line 132
    iget-object v0, p0, Landroidx/fragment/app/b;->g:Ljava/lang/String;

    iput-object v0, v3, Landroidx/fragment/app/a;->m:Ljava/lang/String;

    .line 133
    iget v0, p0, Landroidx/fragment/app/b;->h:I

    iput v0, v3, Landroidx/fragment/app/a;->c:I

    .line 134
    iput-boolean v7, v3, Landroidx/fragment/app/a;->k:Z

    .line 135
    iget v0, p0, Landroidx/fragment/app/b;->i:I

    iput v0, v3, Landroidx/fragment/app/a;->n:I

    .line 136
    iget-object v0, p0, Landroidx/fragment/app/b;->j:Ljava/lang/CharSequence;

    iput-object v0, v3, Landroidx/fragment/app/a;->o:Ljava/lang/CharSequence;

    .line 137
    iget v0, p0, Landroidx/fragment/app/b;->k:I

    iput v0, v3, Landroidx/fragment/app/a;->p:I

    .line 138
    iget-object v0, p0, Landroidx/fragment/app/b;->l:Ljava/lang/CharSequence;

    iput-object v0, v3, Landroidx/fragment/app/a;->q:Ljava/lang/CharSequence;

    .line 139
    iget-object v0, p0, Landroidx/fragment/app/b;->m:Ljava/util/ArrayList;

    iput-object v0, v3, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    .line 140
    iget-object v0, p0, Landroidx/fragment/app/b;->n:Ljava/util/ArrayList;

    iput-object v0, v3, Landroidx/fragment/app/a;->s:Ljava/util/ArrayList;

    .line 141
    iget-boolean v0, p0, Landroidx/fragment/app/b;->o:Z

    iput-boolean v0, v3, Landroidx/fragment/app/a;->t:Z

    .line 142
    invoke-virtual {v3, v7}, Landroidx/fragment/app/a;->a(I)V

    .line 143
    return-object v3
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 153
    iget-object v1, p0, Landroidx/fragment/app/b;->a:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 154
    iget-object v1, p0, Landroidx/fragment/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 155
    iget-object v1, p0, Landroidx/fragment/app/b;->c:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 156
    iget-object v1, p0, Landroidx/fragment/app/b;->d:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 157
    iget v1, p0, Landroidx/fragment/app/b;->e:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v1, p0, Landroidx/fragment/app/b;->f:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-object v1, p0, Landroidx/fragment/app/b;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget v1, p0, Landroidx/fragment/app/b;->h:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget v1, p0, Landroidx/fragment/app/b;->i:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object v1, p0, Landroidx/fragment/app/b;->j:Ljava/lang/CharSequence;

    invoke-static {v1, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 163
    iget v1, p0, Landroidx/fragment/app/b;->k:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object v1, p0, Landroidx/fragment/app/b;->l:Ljava/lang/CharSequence;

    invoke-static {v1, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 165
    iget-object v1, p0, Landroidx/fragment/app/b;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 166
    iget-object v1, p0, Landroidx/fragment/app/b;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 167
    iget-boolean v1, p0, Landroidx/fragment/app/b;->o:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    return-void
.end method
