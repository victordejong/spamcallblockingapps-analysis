.class public final enum Lcom/google/android/gms/internal/measurement/eo;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/measurement/eo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/measurement/eo;

.field public static final enum b:Lcom/google/android/gms/internal/measurement/eo;

.field public static final enum c:Lcom/google/android/gms/internal/measurement/eo;

.field public static final enum d:Lcom/google/android/gms/internal/measurement/eo;

.field public static final enum e:Lcom/google/android/gms/internal/measurement/eo;

.field public static final enum f:Lcom/google/android/gms/internal/measurement/eo;

.field public static final enum g:Lcom/google/android/gms/internal/measurement/eo;

.field public static final enum h:Lcom/google/android/gms/internal/measurement/eo;

.field public static final enum i:Lcom/google/android/gms/internal/measurement/eo;

.field public static final enum j:Lcom/google/android/gms/internal/measurement/eo;

.field private static final synthetic n:[Lcom/google/android/gms/internal/measurement/eo;


# instance fields
.field private final k:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final l:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final m:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/measurement/eo;

    const-string/jumbo v1, "VOID"

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Void;

    const-class v4, Ljava/lang/Void;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/eo;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/eo;->a:Lcom/google/android/gms/internal/measurement/eo;

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/measurement/eo;

    const-string/jumbo v1, "INT"

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/eo;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/eo;->b:Lcom/google/android/gms/internal/measurement/eo;

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/measurement/eo;

    const-string/jumbo v1, "LONG"

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Long;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/eo;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/eo;->c:Lcom/google/android/gms/internal/measurement/eo;

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/measurement/eo;

    const-string/jumbo v1, "FLOAT"

    const/4 v2, 0x3

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Float;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/eo;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/eo;->d:Lcom/google/android/gms/internal/measurement/eo;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/measurement/eo;

    const-string/jumbo v1, "DOUBLE"

    const/4 v2, 0x4

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Double;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/eo;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/eo;->e:Lcom/google/android/gms/internal/measurement/eo;

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/measurement/eo;

    const-string/jumbo v1, "BOOLEAN"

    const/4 v2, 0x5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Boolean;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/eo;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/eo;->f:Lcom/google/android/gms/internal/measurement/eo;

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/measurement/eo;

    const-string/jumbo v1, "STRING"

    const/4 v2, 0x6

    const-class v3, Ljava/lang/String;

    const-class v4, Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/eo;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/eo;->g:Lcom/google/android/gms/internal/measurement/eo;

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/measurement/eo;

    const-string/jumbo v1, "BYTE_STRING"

    const/4 v2, 0x7

    const-class v3, Lcom/google/android/gms/internal/measurement/ct;

    const-class v4, Lcom/google/android/gms/internal/measurement/ct;

    sget-object v5, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/ct;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/eo;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/eo;->h:Lcom/google/android/gms/internal/measurement/eo;

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/measurement/eo;

    const-string/jumbo v1, "ENUM"

    const/16 v2, 0x8

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/eo;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/eo;->i:Lcom/google/android/gms/internal/measurement/eo;

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/measurement/eo;

    const-string/jumbo v1, "MESSAGE"

    const/16 v2, 0x9

    const-class v3, Ljava/lang/Object;

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/eo;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/eo;->j:Lcom/google/android/gms/internal/measurement/eo;

    .line 18
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/eo;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/internal/measurement/eo;->a:Lcom/google/android/gms/internal/measurement/eo;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/internal/measurement/eo;->b:Lcom/google/android/gms/internal/measurement/eo;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/gms/internal/measurement/eo;->c:Lcom/google/android/gms/internal/measurement/eo;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/android/gms/internal/measurement/eo;->d:Lcom/google/android/gms/internal/measurement/eo;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/gms/internal/measurement/eo;->e:Lcom/google/android/gms/internal/measurement/eo;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gms/internal/measurement/eo;->f:Lcom/google/android/gms/internal/measurement/eo;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gms/internal/measurement/eo;->g:Lcom/google/android/gms/internal/measurement/eo;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gms/internal/measurement/eo;->h:Lcom/google/android/gms/internal/measurement/eo;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/gms/internal/measurement/eo;->i:Lcom/google/android/gms/internal/measurement/eo;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/gms/internal/measurement/eo;->j:Lcom/google/android/gms/internal/measurement/eo;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/measurement/eo;->n:[Lcom/google/android/gms/internal/measurement/eo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/eo;->k:Ljava/lang/Class;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/eo;->l:Ljava/lang/Class;

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/eo;->m:Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/eo;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/eo;->n:[Lcom/google/android/gms/internal/measurement/eo;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/eo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/eo;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/eo;->l:Ljava/lang/Class;

    return-object v0
.end method
