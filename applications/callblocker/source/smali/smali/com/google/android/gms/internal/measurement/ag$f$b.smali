.class public final enum Lcom/google/android/gms/internal/measurement/ag$f$b;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ei;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/ag$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/measurement/ag$f$b;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/ei;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/measurement/ag$f$b;

.field public static final enum b:Lcom/google/android/gms/internal/measurement/ag$f$b;

.field public static final enum c:Lcom/google/android/gms/internal/measurement/ag$f$b;

.field public static final enum d:Lcom/google/android/gms/internal/measurement/ag$f$b;

.field public static final enum e:Lcom/google/android/gms/internal/measurement/ag$f$b;

.field public static final enum f:Lcom/google/android/gms/internal/measurement/ag$f$b;

.field public static final enum g:Lcom/google/android/gms/internal/measurement/ag$f$b;

.field private static final h:Lcom/google/android/gms/internal/measurement/eh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/eh",
            "<",
            "Lcom/google/android/gms/internal/measurement/ag$f$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic j:[Lcom/google/android/gms/internal/measurement/ag$f$b;


# instance fields
.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/measurement/ag$f$b;

    const-string/jumbo v1, "UNKNOWN_MATCH_TYPE"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/measurement/ag$f$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ag$f$b;->a:Lcom/google/android/gms/internal/measurement/ag$f$b;

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/measurement/ag$f$b;

    const-string/jumbo v1, "REGEXP"

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/measurement/ag$f$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ag$f$b;->b:Lcom/google/android/gms/internal/measurement/ag$f$b;

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/measurement/ag$f$b;

    const-string/jumbo v1, "BEGINS_WITH"

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/gms/internal/measurement/ag$f$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ag$f$b;->c:Lcom/google/android/gms/internal/measurement/ag$f$b;

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/measurement/ag$f$b;

    const-string/jumbo v1, "ENDS_WITH"

    invoke-direct {v0, v1, v7, v7}, Lcom/google/android/gms/internal/measurement/ag$f$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ag$f$b;->d:Lcom/google/android/gms/internal/measurement/ag$f$b;

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/measurement/ag$f$b;

    const-string/jumbo v1, "PARTIAL"

    invoke-direct {v0, v1, v8, v8}, Lcom/google/android/gms/internal/measurement/ag$f$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ag$f$b;->e:Lcom/google/android/gms/internal/measurement/ag$f$b;

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/measurement/ag$f$b;

    const-string/jumbo v1, "EXACT"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/ag$f$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ag$f$b;->f:Lcom/google/android/gms/internal/measurement/ag$f$b;

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/measurement/ag$f$b;

    const-string/jumbo v1, "IN_LIST"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/ag$f$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ag$f$b;->g:Lcom/google/android/gms/internal/measurement/ag$f$b;

    .line 33
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/ag$f$b;

    sget-object v1, Lcom/google/android/gms/internal/measurement/ag$f$b;->a:Lcom/google/android/gms/internal/measurement/ag$f$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/measurement/ag$f$b;->b:Lcom/google/android/gms/internal/measurement/ag$f$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/measurement/ag$f$b;->c:Lcom/google/android/gms/internal/measurement/ag$f$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/measurement/ag$f$b;->d:Lcom/google/android/gms/internal/measurement/ag$f$b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gms/internal/measurement/ag$f$b;->e:Lcom/google/android/gms/internal/measurement/ag$f$b;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gms/internal/measurement/ag$f$b;->f:Lcom/google/android/gms/internal/measurement/ag$f$b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gms/internal/measurement/ag$f$b;->g:Lcom/google/android/gms/internal/measurement/ag$f$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/measurement/ag$f$b;->j:[Lcom/google/android/gms/internal/measurement/ag$f$b;

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/measurement/ak;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ak;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ag$f$b;->h:Lcom/google/android/gms/internal/measurement/eh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/google/android/gms/internal/measurement/ag$f$b;->i:I

    .line 25
    return-void
.end method

.method public static a(I)Lcom/google/android/gms/internal/measurement/ag$f$b;
    .locals 1

    .prologue
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 11
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$f$b;->a:Lcom/google/android/gms/internal/measurement/ag$f$b;

    goto :goto_0

    .line 5
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$f$b;->b:Lcom/google/android/gms/internal/measurement/ag$f$b;

    goto :goto_0

    .line 6
    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$f$b;->c:Lcom/google/android/gms/internal/measurement/ag$f$b;

    goto :goto_0

    .line 7
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$f$b;->d:Lcom/google/android/gms/internal/measurement/ag$f$b;

    goto :goto_0

    .line 8
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$f$b;->e:Lcom/google/android/gms/internal/measurement/ag$f$b;

    goto :goto_0

    .line 9
    :pswitch_5
    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$f$b;->f:Lcom/google/android/gms/internal/measurement/ag$f$b;

    goto :goto_0

    .line 10
    :pswitch_6
    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$f$b;->g:Lcom/google/android/gms/internal/measurement/ag$f$b;

    goto :goto_0

    .line 3
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static b()Lcom/google/android/gms/internal/measurement/ek;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/gms/internal/measurement/am;->a:Lcom/google/android/gms/internal/measurement/ek;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/ag$f$b;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$f$b;->j:[Lcom/google/android/gms/internal/measurement/ag$f$b;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/ag$f$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/ag$f$b;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ag$f$b;->i:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 15
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string/jumbo v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 18
    iget v2, p0, Lcom/google/android/gms/internal/measurement/ag$f$b;->i:I

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string/jumbo v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ag$f$b;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    return-object v0
.end method
