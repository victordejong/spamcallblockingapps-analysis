.class public enum Lcom/google/android/gms/internal/measurement/hl;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/measurement/hl;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/measurement/hl;

.field public static final enum b:Lcom/google/android/gms/internal/measurement/hl;

.field public static final enum c:Lcom/google/android/gms/internal/measurement/hl;

.field public static final enum d:Lcom/google/android/gms/internal/measurement/hl;

.field public static final enum e:Lcom/google/android/gms/internal/measurement/hl;

.field public static final enum f:Lcom/google/android/gms/internal/measurement/hl;

.field public static final enum g:Lcom/google/android/gms/internal/measurement/hl;

.field public static final enum h:Lcom/google/android/gms/internal/measurement/hl;

.field public static final enum i:Lcom/google/android/gms/internal/measurement/hl;

.field public static final enum j:Lcom/google/android/gms/internal/measurement/hl;

.field public static final enum k:Lcom/google/android/gms/internal/measurement/hl;

.field public static final enum l:Lcom/google/android/gms/internal/measurement/hl;

.field public static final enum m:Lcom/google/android/gms/internal/measurement/hl;

.field public static final enum n:Lcom/google/android/gms/internal/measurement/hl;

.field public static final enum o:Lcom/google/android/gms/internal/measurement/hl;

.field public static final enum p:Lcom/google/android/gms/internal/measurement/hl;

.field public static final enum q:Lcom/google/android/gms/internal/measurement/hl;

.field public static final enum r:Lcom/google/android/gms/internal/measurement/hl;

.field private static final synthetic u:[Lcom/google/android/gms/internal/measurement/hl;


# instance fields
.field private final s:Lcom/google/android/gms/internal/measurement/ho;

.field private final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/measurement/hl;

    const-string/jumbo v1, "DOUBLE"

    sget-object v2, Lcom/google/android/gms/internal/measurement/ho;->d:Lcom/google/android/gms/internal/measurement/ho;

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/google/android/gms/internal/measurement/hl;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ho;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/hl;->a:Lcom/google/android/gms/internal/measurement/hl;

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/measurement/hl;

    const-string/jumbo v1, "FLOAT"

    sget-object v2, Lcom/google/android/gms/internal/measurement/ho;->c:Lcom/google/android/gms/internal/measurement/ho;

    invoke-direct {v0, v1, v5, v2, v7}, Lcom/google/android/gms/internal/measurement/hl;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ho;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/hl;->b:Lcom/google/android/gms/internal/measurement/hl;

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/measurement/hl;

    const-string/jumbo v1, "INT64"

    sget-object v2, Lcom/google/android/gms/internal/measurement/ho;->b:Lcom/google/android/gms/internal/measurement/ho;

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/google/android/gms/internal/measurement/hl;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ho;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/hl;->c:Lcom/google/android/gms/internal/measurement/hl;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/measurement/hl;

    const-string/jumbo v1, "UINT64"

    sget-object v2, Lcom/google/android/gms/internal/measurement/ho;->b:Lcom/google/android/gms/internal/measurement/ho;

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/google/android/gms/internal/measurement/hl;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ho;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/hl;->d:Lcom/google/android/gms/internal/measurement/hl;

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/measurement/hl;

    const-string/jumbo v1, "INT32"

    const/4 v2, 0x4

    sget-object v3, Lcom/google/android/gms/internal/measurement/ho;->a:Lcom/google/android/gms/internal/measurement/ho;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/hl;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ho;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/hl;->e:Lcom/google/android/gms/internal/measurement/hl;

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/measurement/hl;

    const-string/jumbo v1, "FIXED64"

    sget-object v2, Lcom/google/android/gms/internal/measurement/ho;->b:Lcom/google/android/gms/internal/measurement/ho;

    invoke-direct {v0, v1, v7, v2, v5}, Lcom/google/android/gms/internal/measurement/hl;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ho;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/hl;->f:Lcom/google/android/gms/internal/measurement/hl;

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/measurement/hl;

    const-string/jumbo v1, "FIXED32"

    const/4 v2, 0x6

    sget-object v3, Lcom/google/android/gms/internal/measurement/ho;->a:Lcom/google/android/gms/internal/measurement/ho;

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/google/android/gms/internal/measurement/hl;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ho;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/hl;->g:Lcom/google/android/gms/internal/measurement/hl;

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/measurement/hl;

    const-string/jumbo v1, "BOOL"

    const/4 v2, 0x7

    sget-object v3, Lcom/google/android/gms/internal/measurement/ho;->e:Lcom/google/android/gms/internal/measurement/ho;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/hl;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ho;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/hl;->h:Lcom/google/android/gms/internal/measurement/hl;

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/measurement/hk;

    const-string/jumbo v1, "STRING"

    const/16 v2, 0x8

    sget-object v3, Lcom/google/android/gms/internal/measurement/ho;->f:Lcom/google/android/gms/internal/measurement/ho;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/google/android/gms/internal/measurement/hk;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ho;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/hl;->i:Lcom/google/android/gms/internal/measurement/hl;

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/measurement/hn;

    const-string/jumbo v1, "GROUP"

    const/16 v2, 0x9

    sget-object v3, Lcom/google/android/gms/internal/measurement/ho;->i:Lcom/google/android/gms/internal/measurement/ho;

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/google/android/gms/internal/measurement/hn;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ho;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/hl;->j:Lcom/google/android/gms/internal/measurement/hl;

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/measurement/hm;

    const-string/jumbo v1, "MESSAGE"

    const/16 v2, 0xa

    sget-object v3, Lcom/google/android/gms/internal/measurement/ho;->i:Lcom/google/android/gms/internal/measurement/ho;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/google/android/gms/internal/measurement/hm;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ho;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/hl;->k:Lcom/google/android/gms/internal/measurement/hl;

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/measurement/hp;

    const-string/jumbo v1, "BYTES"

    const/16 v2, 0xb

    sget-object v3, Lcom/google/android/gms/internal/measurement/ho;->g:Lcom/google/android/gms/internal/measurement/ho;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/google/android/gms/internal/measurement/hp;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ho;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/hl;->l:Lcom/google/android/gms/internal/measurement/hl;

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/measurement/hl;

    const-string/jumbo v1, "UINT32"

    const/16 v2, 0xc

    sget-object v3, Lcom/google/android/gms/internal/measurement/ho;->a:Lcom/google/android/gms/internal/measurement/ho;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/hl;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ho;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/hl;->m:Lcom/google/android/gms/internal/measurement/hl;

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/measurement/hl;

    const-string/jumbo v1, "ENUM"

    const/16 v2, 0xd

    sget-object v3, Lcom/google/android/gms/internal/measurement/ho;->h:Lcom/google/android/gms/internal/measurement/ho;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/hl;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ho;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/hl;->n:Lcom/google/android/gms/internal/measurement/hl;

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/measurement/hl;

    const-string/jumbo v1, "SFIXED32"

    const/16 v2, 0xe

    sget-object v3, Lcom/google/android/gms/internal/measurement/ho;->a:Lcom/google/android/gms/internal/measurement/ho;

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/google/android/gms/internal/measurement/hl;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ho;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/hl;->o:Lcom/google/android/gms/internal/measurement/hl;

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/measurement/hl;

    const-string/jumbo v1, "SFIXED64"

    const/16 v2, 0xf

    sget-object v3, Lcom/google/android/gms/internal/measurement/ho;->b:Lcom/google/android/gms/internal/measurement/ho;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/android/gms/internal/measurement/hl;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ho;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/hl;->p:Lcom/google/android/gms/internal/measurement/hl;

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/measurement/hl;

    const-string/jumbo v1, "SINT32"

    const/16 v2, 0x10

    sget-object v3, Lcom/google/android/gms/internal/measurement/ho;->a:Lcom/google/android/gms/internal/measurement/ho;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/hl;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ho;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/hl;->q:Lcom/google/android/gms/internal/measurement/hl;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/measurement/hl;

    const-string/jumbo v1, "SINT64"

    const/16 v2, 0x11

    sget-object v3, Lcom/google/android/gms/internal/measurement/ho;->b:Lcom/google/android/gms/internal/measurement/ho;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/hl;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ho;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/hl;->r:Lcom/google/android/gms/internal/measurement/hl;

    .line 27
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/hl;

    sget-object v1, Lcom/google/android/gms/internal/measurement/hl;->a:Lcom/google/android/gms/internal/measurement/hl;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/measurement/hl;->b:Lcom/google/android/gms/internal/measurement/hl;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/measurement/hl;->c:Lcom/google/android/gms/internal/measurement/hl;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/measurement/hl;->d:Lcom/google/android/gms/internal/measurement/hl;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/gms/internal/measurement/hl;->e:Lcom/google/android/gms/internal/measurement/hl;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/measurement/hl;->f:Lcom/google/android/gms/internal/measurement/hl;

    aput-object v1, v0, v7

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gms/internal/measurement/hl;->g:Lcom/google/android/gms/internal/measurement/hl;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gms/internal/measurement/hl;->h:Lcom/google/android/gms/internal/measurement/hl;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/gms/internal/measurement/hl;->i:Lcom/google/android/gms/internal/measurement/hl;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/gms/internal/measurement/hl;->j:Lcom/google/android/gms/internal/measurement/hl;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/gms/internal/measurement/hl;->k:Lcom/google/android/gms/internal/measurement/hl;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/gms/internal/measurement/hl;->l:Lcom/google/android/gms/internal/measurement/hl;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/gms/internal/measurement/hl;->m:Lcom/google/android/gms/internal/measurement/hl;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/gms/internal/measurement/hl;->n:Lcom/google/android/gms/internal/measurement/hl;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/gms/internal/measurement/hl;->o:Lcom/google/android/gms/internal/measurement/hl;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/gms/internal/measurement/hl;->p:Lcom/google/android/gms/internal/measurement/hl;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/gms/internal/measurement/hl;->q:Lcom/google/android/gms/internal/measurement/hl;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/android/gms/internal/measurement/hl;->r:Lcom/google/android/gms/internal/measurement/hl;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/measurement/hl;->u:[Lcom/google/android/gms/internal/measurement/hl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ho;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/ho;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/hl;->s:Lcom/google/android/gms/internal/measurement/ho;

    .line 4
    iput p4, p0, Lcom/google/android/gms/internal/measurement/hl;->t:I

    .line 5
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ho;ILcom/google/android/gms/internal/measurement/hi;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/hl;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ho;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/hl;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/hl;->u:[Lcom/google/android/gms/internal/measurement/hl;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/hl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/hl;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/measurement/ho;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hl;->s:Lcom/google/android/gms/internal/measurement/ho;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/measurement/hl;->t:I

    return v0
.end method
