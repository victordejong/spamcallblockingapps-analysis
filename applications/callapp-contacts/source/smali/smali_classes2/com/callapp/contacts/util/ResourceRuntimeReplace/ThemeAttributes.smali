.class public abstract Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field A:I

.field B:I

.field C:I

.field D:I

.field E:I

.field F:I

.field G:I

.field H:I

.field I:I

.field J:I

.field K:I

.field L:I

.field M:I

.field N:I

.field O:I

.field P:I

.field Q:I

.field R:I

.field S:I

.field T:I

.field U:I

.field V:I

.field W:I

.field X:I

.field Y:I

.field Z:I

.field private a:Z

.field aa:I

.field ab:I

.field private b:Z

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:I

.field p:I

.field q:I

.field r:I

.field s:I

.field t:I

.field u:I

.field v:I

.field w:I

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->a:Z

    .line 18
    iput-boolean v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->b:Z

    .line 79
    iput-boolean p1, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->a:Z

    .line 80
    iput-boolean p2, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->b:Z

    .line 82
    invoke-direct {p0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->a()V

    return-void
.end method

.method private a()V
    .locals 7

    .line 86
    iget-boolean v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->a:Z

    const v1, 0x7f0600ab

    const v2, 0x7f06010f

    const v3, 0x7f06010d

    const v4, 0x7f06010e

    const v5, 0x7f060244

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0, v5}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->d:I

    .line 88
    invoke-direct {p0, v5}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->e:I

    .line 89
    invoke-direct {p0, v2}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->f:I

    const v0, 0x7f060111

    .line 90
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v6

    iput v6, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->O:I

    .line 91
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v6

    iput v6, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->g:I

    const v6, 0x7f060084

    .line 92
    invoke-direct {p0, v6}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v6

    iput v6, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->l:I

    .line 93
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->h:I

    .line 94
    invoke-direct {p0, v2}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->i:I

    .line 95
    invoke-direct {p0, v3}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->j:I

    .line 96
    invoke-direct {p0, v4}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->k:I

    const v0, 0x7f060243

    .line 97
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->m:I

    .line 98
    invoke-direct {p0, v5}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->p:I

    .line 99
    invoke-virtual {p0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorPrimaryDark()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->q:I

    .line 100
    invoke-virtual {p0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorPrimary()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->y:I

    const v0, 0x7f060129

    .line 101
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->z:I

    .line 102
    invoke-virtual {p0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorPrimary()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->A:I

    .line 103
    invoke-virtual {p0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorPrimary()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->B:I

    .line 104
    invoke-virtual {p0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorPrimaryLight()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->C:I

    .line 105
    invoke-virtual {p0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorPrimaryLight()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->D:I

    .line 106
    invoke-direct {p0, v5}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->r:I

    const v0, 0x7f06010a

    .line 107
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->s:I

    const v0, 0x7f06010b

    .line 108
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->t:I

    .line 109
    invoke-direct {p0, v4}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->o:I

    .line 110
    invoke-virtual {p0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorPrimary()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->n:I

    .line 111
    invoke-virtual {p0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorPrimary()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->v:I

    .line 112
    invoke-direct {p0, v5}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->u:I

    .line 113
    iget v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->j:I

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->x:I

    .line 114
    invoke-direct {p0, v1}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->w:I

    const v0, 0x7f060198

    .line 115
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v1

    iput v1, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->E:I

    const v1, 0x7f060195

    .line 116
    invoke-direct {p0, v1}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v1

    iput v1, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->F:I

    .line 117
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->G:I

    const v0, 0x7f06006f

    .line 118
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->H:I

    const v0, 0x7f060067

    .line 119
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->I:I

    const v0, 0x7f060064

    .line 120
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->J:I

    const v0, 0x7f06015e

    .line 121
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->K:I

    const v0, 0x7f06015b

    .line 122
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->L:I

    const v0, 0x7f0601a0

    .line 123
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->M:I

    const v0, 0x7f06019d

    .line 124
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->N:I

    const v0, 0x7f08033b

    .line 127
    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->P:I

    const v0, 0x7f08034b

    .line 128
    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->Q:I

    const v0, 0x7f0805ba

    .line 129
    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->R:I

    const v0, 0x7f0805bc

    .line 130
    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->S:I

    const v0, 0x7f08010d

    .line 131
    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->T:I

    const v0, 0x7f080113

    .line 132
    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->U:I

    const v0, 0x7f080114

    .line 133
    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->V:I

    const v0, 0x7f0805dc

    .line 134
    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->W:I

    const v0, 0x7f0805d9

    .line 135
    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->X:I

    const v0, 0x7f0805c4

    .line 136
    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->Y:I

    const v0, 0x7f0805be

    .line 137
    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->Z:I

    const v0, 0x7f0805c0

    .line 138
    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->aa:I

    const v0, 0x7f0805c2

    .line 139
    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->ab:I

    return-void

    .line 142
    :cond_0
    invoke-direct {p0, v4}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->d:I

    const v0, 0x7f060112

    .line 143
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->e:I

    .line 144
    invoke-direct {p0, v3}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->f:I

    .line 145
    invoke-direct {p0, v3}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->O:I

    .line 146
    invoke-direct {p0, v1}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->g:I

    const v0, 0x7f060085

    .line 147
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->l:I

    .line 148
    invoke-direct {p0, v4}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->h:I

    .line 149
    invoke-direct {p0, v3}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->i:I

    .line 150
    invoke-direct {p0, v2}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->j:I

    .line 151
    invoke-direct {p0, v5}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->k:I

    const v0, 0x7f0600ac

    .line 152
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->m:I

    .line 153
    invoke-direct {p0, v5}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->o:I

    .line 154
    invoke-virtual {p0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorPrimaryLight()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->n:I

    .line 155
    invoke-direct {p0, v4}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->p:I

    .line 156
    invoke-direct {p0, v5}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->v:I

    .line 157
    invoke-direct {p0, v5}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->w:I

    const v0, 0x7f060128

    .line 158
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->z:I

    .line 159
    iget v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->k:I

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->B:I

    .line 160
    iget v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->f:I

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->C:I

    .line 161
    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->D:I

    .line 162
    invoke-direct {p0, v4}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->r:I

    .line 163
    invoke-virtual {p0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorPrimary()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->s:I

    .line 164
    invoke-virtual {p0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorPrimaryDark()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->t:I

    .line 165
    invoke-direct {p0, v5}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->u:I

    .line 166
    invoke-direct {p0, v5}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->x:I

    const v0, 0x7f060197

    .line 167
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v1

    iput v1, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->E:I

    const v1, 0x7f060194

    .line 168
    invoke-direct {p0, v1}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v1

    iput v1, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->F:I

    .line 169
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->G:I

    const v0, 0x7f06006d

    .line 170
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->H:I

    const v0, 0x7f060066

    .line 171
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->I:I

    const v0, 0x7f060063

    .line 172
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->J:I

    const v0, 0x7f06015d

    .line 173
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->K:I

    const v0, 0x7f06015a

    .line 174
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->L:I

    const v0, 0x7f06019f

    .line 175
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->M:I

    const v0, 0x7f06019c

    .line 176
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->N:I

    .line 178
    iget-boolean v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->b:Z

    if-eqz v0, :cond_1

    .line 179
    iget v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->d:I

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->q:I

    .line 180
    invoke-direct {p0, v4}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->y:I

    .line 181
    invoke-direct {p0, v4}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorCustom(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->A:I

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorPrimaryDark()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->q:I

    .line 184
    invoke-virtual {p0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorPrimary()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->y:I

    .line 185
    invoke-virtual {p0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->getColorPrimary()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->A:I

    :goto_0
    const v0, 0x7f08033c

    .line 189
    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->P:I

    const v0, 0x7f08034c

    .line 190
    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->Q:I

    const v0, 0x7f0805bb

    .line 191
    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->R:I

    const v0, 0x7f0805bd

    .line 192
    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->S:I

    const v0, 0x7f08010c

    .line 193
    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->T:I

    const v0, 0x7f080111

    .line 194
    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->U:I

    const v0, 0x7f080112

    .line 195
    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->V:I

    const v0, 0x7f0805db

    .line 196
    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->W:I

    const v0, 0x7f0805da

    .line 197
    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->X:I

    const v0, 0x7f0805c5

    .line 198
    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->Y:I

    const v0, 0x7f0805bf

    .line 199
    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->Z:I

    const v0, 0x7f0805c1

    .line 200
    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->aa:I

    const v0, 0x7f0805c3

    .line 201
    iput v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->ab:I

    return-void
.end method

.method private getColorCustom(I)I
    .locals 1

    .line 206
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/b;->c(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public abstract getColorPrimary()I
.end method

.method public abstract getColorPrimaryDark()I
.end method

.method public abstract getColorPrimaryLight()I
.end method

.method public isLightTheme()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->a:Z

    return v0
.end method

.method public setLight(Z)V
    .locals 0

    .line 216
    iput-boolean p1, p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->a:Z

    .line 217
    invoke-direct {p0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;->a()V

    return-void
.end method
