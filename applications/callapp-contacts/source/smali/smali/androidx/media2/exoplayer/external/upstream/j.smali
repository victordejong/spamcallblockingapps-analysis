.class public final Landroidx/media2/exoplayer/external/upstream/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/c;
.implements Landroidx/media2/exoplayer/external/upstream/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/upstream/j$b;,
        Landroidx/media2/exoplayer/external/upstream/j$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field public static final b:[J

.field public static final c:[J

.field public static final d:[J

.field public static final e:[J

.field private static f:Landroidx/media2/exoplayer/external/upstream/j;


# instance fields
.field private final g:Landroid/content/Context;

.field private final h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroidx/media2/exoplayer/external/util/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/util/f<",
            "Landroidx/media2/exoplayer/external/upstream/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroidx/media2/exoplayer/external/util/s;

.field private final k:Landroidx/media2/exoplayer/external/util/b;

.field private l:I

.field private m:J

.field private n:J

.field private o:I

.field private p:J

.field private q:J

.field private r:J

.field private s:J

.field private t:Z

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 4495
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 4496
    fill-array-data v2, :array_0

    const-string v3, "AD"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4497
    fill-array-data v2, :array_1

    const-string v3, "AE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4498
    fill-array-data v2, :array_2

    const-string v3, "AF"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4499
    fill-array-data v2, :array_3

    const-string v3, "AG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4500
    fill-array-data v2, :array_4

    const-string v3, "AI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4501
    fill-array-data v2, :array_5

    const-string v3, "AL"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4502
    fill-array-data v2, :array_6

    const-string v3, "AM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4503
    fill-array-data v2, :array_7

    const-string v3, "AO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4504
    fill-array-data v2, :array_8

    const-string v3, "AQ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4505
    fill-array-data v2, :array_9

    const-string v3, "AR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4506
    fill-array-data v2, :array_a

    const-string v3, "AS"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4507
    fill-array-data v2, :array_b

    const-string v3, "AT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4508
    fill-array-data v2, :array_c

    const-string v3, "AU"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4509
    fill-array-data v2, :array_d

    const-string v3, "AW"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4510
    fill-array-data v2, :array_e

    const-string v3, "AX"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4511
    fill-array-data v2, :array_f

    const-string v3, "AZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4512
    fill-array-data v2, :array_10

    const-string v3, "BA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4513
    fill-array-data v2, :array_11

    const-string v3, "BB"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4514
    fill-array-data v2, :array_12

    const-string v3, "BD"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4515
    fill-array-data v2, :array_13

    const-string v3, "BE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4516
    fill-array-data v2, :array_14

    const-string v3, "BF"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4517
    fill-array-data v2, :array_15

    const-string v3, "BG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4518
    fill-array-data v2, :array_16

    const-string v3, "BH"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4519
    fill-array-data v2, :array_17

    const-string v3, "BI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4520
    fill-array-data v2, :array_18

    const-string v3, "BJ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4521
    fill-array-data v2, :array_19

    const-string v3, "BL"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4522
    fill-array-data v2, :array_1a

    const-string v3, "BM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4523
    fill-array-data v2, :array_1b

    const-string v3, "BN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4524
    fill-array-data v2, :array_1c

    const-string v3, "BO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4525
    fill-array-data v2, :array_1d

    const-string v3, "BQ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4526
    fill-array-data v2, :array_1e

    const-string v3, "BR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4527
    fill-array-data v2, :array_1f

    const-string v3, "BS"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4528
    fill-array-data v2, :array_20

    const-string v3, "BT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4529
    fill-array-data v2, :array_21

    const-string v3, "BW"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4530
    fill-array-data v2, :array_22

    const-string v3, "BY"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4531
    fill-array-data v2, :array_23

    const-string v3, "BZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4532
    fill-array-data v2, :array_24

    const-string v3, "CA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4533
    fill-array-data v2, :array_25

    const-string v3, "CD"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4534
    fill-array-data v2, :array_26

    const-string v3, "CF"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4535
    fill-array-data v2, :array_27

    const-string v3, "CG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4536
    fill-array-data v2, :array_28

    const-string v3, "CH"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4537
    fill-array-data v2, :array_29

    const-string v3, "CI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4538
    fill-array-data v2, :array_2a

    const-string v3, "CK"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4539
    fill-array-data v2, :array_2b

    const-string v3, "CL"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4540
    fill-array-data v2, :array_2c

    const-string v3, "CM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4541
    fill-array-data v2, :array_2d

    const-string v3, "CN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4542
    fill-array-data v2, :array_2e

    const-string v3, "CO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4543
    fill-array-data v2, :array_2f

    const-string v3, "CR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4544
    fill-array-data v2, :array_30

    const-string v3, "CU"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4545
    fill-array-data v2, :array_31

    const-string v3, "CV"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4546
    fill-array-data v2, :array_32

    const-string v3, "CW"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4547
    fill-array-data v2, :array_33

    const-string v3, "CX"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4548
    fill-array-data v2, :array_34

    const-string v3, "CY"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4549
    fill-array-data v2, :array_35

    const-string v3, "CZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4550
    fill-array-data v2, :array_36

    const-string v3, "DE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4551
    fill-array-data v2, :array_37

    const-string v3, "DJ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4552
    fill-array-data v2, :array_38

    const-string v3, "DK"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4553
    fill-array-data v2, :array_39

    const-string v3, "DM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4554
    fill-array-data v2, :array_3a

    const-string v3, "DO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4555
    fill-array-data v2, :array_3b

    const-string v3, "DZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4556
    fill-array-data v2, :array_3c

    const-string v3, "EC"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4557
    fill-array-data v2, :array_3d

    const-string v3, "EE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4558
    fill-array-data v2, :array_3e

    const-string v3, "EG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4559
    fill-array-data v2, :array_3f

    const-string v3, "EH"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4560
    fill-array-data v2, :array_40

    const-string v3, "ER"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4561
    fill-array-data v2, :array_41

    const-string v3, "ES"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4562
    fill-array-data v2, :array_42

    const-string v3, "ET"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4563
    fill-array-data v2, :array_43

    const-string v3, "FI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4564
    fill-array-data v2, :array_44

    const-string v3, "FJ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4565
    fill-array-data v2, :array_45

    const-string v3, "FK"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4566
    fill-array-data v2, :array_46

    const-string v3, "FM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4567
    fill-array-data v2, :array_47

    const-string v3, "FO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4568
    fill-array-data v2, :array_48

    const-string v3, "FR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4569
    fill-array-data v2, :array_49

    const-string v3, "GA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4570
    fill-array-data v2, :array_4a

    const-string v3, "GB"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4571
    fill-array-data v2, :array_4b

    const-string v3, "GD"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4572
    fill-array-data v2, :array_4c

    const-string v3, "GE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4573
    fill-array-data v2, :array_4d

    const-string v3, "GF"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4574
    fill-array-data v2, :array_4e

    const-string v3, "GG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4575
    fill-array-data v2, :array_4f

    const-string v3, "GH"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4576
    fill-array-data v2, :array_50

    const-string v3, "GI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4577
    fill-array-data v2, :array_51

    const-string v3, "GL"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4578
    fill-array-data v2, :array_52

    const-string v3, "GM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4579
    fill-array-data v2, :array_53

    const-string v3, "GN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4580
    fill-array-data v2, :array_54

    const-string v3, "GP"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4581
    fill-array-data v2, :array_55

    const-string v3, "GQ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4582
    fill-array-data v2, :array_56

    const-string v3, "GR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4583
    fill-array-data v2, :array_57

    const-string v3, "GT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4584
    fill-array-data v2, :array_58

    const-string v3, "GU"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4585
    fill-array-data v2, :array_59

    const-string v3, "GW"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4586
    fill-array-data v2, :array_5a

    const-string v3, "GY"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4587
    fill-array-data v2, :array_5b

    const-string v3, "HK"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4588
    fill-array-data v2, :array_5c

    const-string v3, "HN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4589
    fill-array-data v2, :array_5d

    const-string v3, "HR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4590
    fill-array-data v2, :array_5e

    const-string v3, "HT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4591
    fill-array-data v2, :array_5f

    const-string v3, "HU"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4592
    fill-array-data v2, :array_60

    const-string v3, "ID"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4593
    fill-array-data v2, :array_61

    const-string v3, "IE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4594
    fill-array-data v2, :array_62

    const-string v3, "IL"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4595
    fill-array-data v2, :array_63

    const-string v3, "IM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4596
    fill-array-data v2, :array_64

    const-string v3, "IN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4597
    fill-array-data v2, :array_65

    const-string v3, "IO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4598
    fill-array-data v2, :array_66

    const-string v3, "IQ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4599
    fill-array-data v2, :array_67

    const-string v3, "IR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4600
    fill-array-data v2, :array_68

    const-string v3, "IS"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4601
    fill-array-data v2, :array_69

    const-string v3, "IT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4602
    fill-array-data v2, :array_6a

    const-string v3, "JE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4603
    fill-array-data v2, :array_6b

    const-string v3, "JM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4604
    fill-array-data v2, :array_6c

    const-string v3, "JO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4605
    fill-array-data v2, :array_6d

    const-string v3, "JP"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4606
    fill-array-data v2, :array_6e

    const-string v3, "KE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4607
    fill-array-data v2, :array_6f

    const-string v3, "KG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4608
    fill-array-data v2, :array_70

    const-string v3, "KH"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4609
    fill-array-data v2, :array_71

    const-string v3, "KI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4610
    fill-array-data v2, :array_72

    const-string v3, "KM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4611
    fill-array-data v2, :array_73

    const-string v3, "KN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4612
    fill-array-data v2, :array_74

    const-string v3, "KP"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4613
    fill-array-data v2, :array_75

    const-string v3, "KR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4614
    fill-array-data v2, :array_76

    const-string v3, "KW"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4615
    fill-array-data v2, :array_77

    const-string v3, "KY"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4616
    fill-array-data v2, :array_78

    const-string v3, "KZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4617
    fill-array-data v2, :array_79

    const-string v3, "LA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4618
    fill-array-data v2, :array_7a

    const-string v3, "LB"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4619
    fill-array-data v2, :array_7b

    const-string v3, "LC"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4620
    fill-array-data v2, :array_7c

    const-string v3, "LI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4621
    fill-array-data v2, :array_7d

    const-string v3, "LK"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4622
    fill-array-data v2, :array_7e

    const-string v3, "LR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4623
    fill-array-data v2, :array_7f

    const-string v3, "LS"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4624
    fill-array-data v2, :array_80

    const-string v3, "LT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4625
    fill-array-data v2, :array_81

    const-string v3, "LU"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4626
    fill-array-data v2, :array_82

    const-string v3, "LV"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4627
    fill-array-data v2, :array_83

    const-string v3, "LY"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4628
    fill-array-data v2, :array_84

    const-string v3, "MA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4629
    fill-array-data v2, :array_85

    const-string v3, "MC"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4630
    fill-array-data v2, :array_86

    const-string v3, "MD"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4631
    fill-array-data v2, :array_87

    const-string v3, "ME"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4632
    fill-array-data v2, :array_88

    const-string v3, "MF"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4633
    fill-array-data v2, :array_89

    const-string v3, "MG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4634
    fill-array-data v2, :array_8a

    const-string v3, "MH"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4635
    fill-array-data v2, :array_8b

    const-string v3, "MK"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4636
    fill-array-data v2, :array_8c

    const-string v3, "ML"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4637
    fill-array-data v2, :array_8d

    const-string v3, "MM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4638
    fill-array-data v2, :array_8e

    const-string v3, "MN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4639
    fill-array-data v2, :array_8f

    const-string v3, "MO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4640
    fill-array-data v2, :array_90

    const-string v3, "MP"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4641
    fill-array-data v2, :array_91

    const-string v3, "MQ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4642
    fill-array-data v2, :array_92

    const-string v3, "MR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4643
    fill-array-data v2, :array_93

    const-string v3, "MS"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4644
    fill-array-data v2, :array_94

    const-string v3, "MT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4645
    fill-array-data v2, :array_95

    const-string v3, "MU"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4646
    fill-array-data v2, :array_96

    const-string v3, "MV"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4647
    fill-array-data v2, :array_97

    const-string v3, "MW"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4648
    fill-array-data v2, :array_98

    const-string v3, "MX"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4649
    fill-array-data v2, :array_99

    const-string v3, "MY"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4650
    fill-array-data v2, :array_9a

    const-string v3, "MZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4651
    fill-array-data v2, :array_9b

    const-string v3, "NA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4652
    fill-array-data v2, :array_9c

    const-string v3, "NC"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4653
    fill-array-data v2, :array_9d

    const-string v3, "NE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4654
    fill-array-data v2, :array_9e

    const-string v3, "NF"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4655
    fill-array-data v2, :array_9f

    const-string v3, "NG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4656
    fill-array-data v2, :array_a0

    const-string v3, "NI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4657
    fill-array-data v2, :array_a1

    const-string v3, "NL"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4658
    fill-array-data v2, :array_a2

    const-string v3, "NO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4659
    fill-array-data v2, :array_a3

    const-string v3, "NP"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4660
    fill-array-data v2, :array_a4

    const-string v3, "NR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4661
    fill-array-data v2, :array_a5

    const-string v3, "NU"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4662
    fill-array-data v2, :array_a6

    const-string v3, "NZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4663
    fill-array-data v2, :array_a7

    const-string v3, "OM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4664
    fill-array-data v2, :array_a8

    const-string v3, "PA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4665
    fill-array-data v2, :array_a9

    const-string v3, "PE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4666
    fill-array-data v2, :array_aa

    const-string v3, "PF"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4667
    fill-array-data v2, :array_ab

    const-string v3, "PG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4668
    fill-array-data v2, :array_ac

    const-string v3, "PH"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4669
    fill-array-data v2, :array_ad

    const-string v3, "PK"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4670
    fill-array-data v2, :array_ae

    const-string v3, "PL"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4671
    fill-array-data v2, :array_af

    const-string v3, "PM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4672
    fill-array-data v2, :array_b0

    const-string v3, "PR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4673
    fill-array-data v2, :array_b1

    const-string v3, "PS"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4674
    fill-array-data v2, :array_b2

    const-string v3, "PT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4675
    fill-array-data v2, :array_b3

    const-string v3, "PW"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4676
    fill-array-data v2, :array_b4

    const-string v3, "PY"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4677
    fill-array-data v2, :array_b5

    const-string v3, "QA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4678
    fill-array-data v2, :array_b6

    const-string v3, "RE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4679
    fill-array-data v2, :array_b7

    const-string v3, "RO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4680
    fill-array-data v2, :array_b8

    const-string v3, "RS"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4681
    fill-array-data v2, :array_b9

    const-string v3, "RU"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4682
    fill-array-data v2, :array_ba

    const-string v3, "RW"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4683
    fill-array-data v2, :array_bb

    const-string v3, "SA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4684
    fill-array-data v2, :array_bc

    const-string v3, "SB"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4685
    fill-array-data v2, :array_bd

    const-string v3, "SC"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4686
    fill-array-data v2, :array_be

    const-string v3, "SD"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4687
    fill-array-data v2, :array_bf

    const-string v3, "SE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4688
    fill-array-data v2, :array_c0

    const-string v3, "SG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4689
    fill-array-data v2, :array_c1

    const-string v3, "SH"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4690
    fill-array-data v2, :array_c2

    const-string v3, "SI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4691
    fill-array-data v2, :array_c3

    const-string v3, "SJ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4692
    fill-array-data v2, :array_c4

    const-string v3, "SK"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4693
    fill-array-data v2, :array_c5

    const-string v3, "SL"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4694
    fill-array-data v2, :array_c6

    const-string v3, "SM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4695
    fill-array-data v2, :array_c7

    const-string v3, "SN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4696
    fill-array-data v2, :array_c8

    const-string v3, "SO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4697
    fill-array-data v2, :array_c9

    const-string v3, "SR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4698
    fill-array-data v2, :array_ca

    const-string v3, "SS"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4699
    fill-array-data v2, :array_cb

    const-string v3, "ST"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4700
    fill-array-data v2, :array_cc

    const-string v3, "SV"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4701
    fill-array-data v2, :array_cd

    const-string v3, "SX"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4702
    fill-array-data v2, :array_ce

    const-string v3, "SY"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4703
    fill-array-data v2, :array_cf

    const-string v3, "SZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4704
    fill-array-data v2, :array_d0

    const-string v3, "TC"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4705
    fill-array-data v2, :array_d1

    const-string v3, "TD"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4706
    fill-array-data v2, :array_d2

    const-string v3, "TG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4707
    fill-array-data v2, :array_d3

    const-string v3, "TH"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4708
    fill-array-data v2, :array_d4

    const-string v3, "TJ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4709
    fill-array-data v2, :array_d5

    const-string v3, "TL"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4710
    fill-array-data v2, :array_d6

    const-string v3, "TM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4711
    fill-array-data v2, :array_d7

    const-string v3, "TN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4712
    fill-array-data v2, :array_d8

    const-string v3, "TO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4713
    fill-array-data v2, :array_d9

    const-string v3, "TR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4714
    fill-array-data v2, :array_da

    const-string v3, "TT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4715
    fill-array-data v2, :array_db

    const-string v3, "TV"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4716
    fill-array-data v2, :array_dc

    const-string v3, "TW"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4717
    fill-array-data v2, :array_dd

    const-string v3, "TZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4718
    fill-array-data v2, :array_de

    const-string v3, "UA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4719
    fill-array-data v2, :array_df

    const-string v3, "UG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4720
    fill-array-data v2, :array_e0

    const-string v3, "US"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4721
    fill-array-data v2, :array_e1

    const-string v3, "UY"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4722
    fill-array-data v2, :array_e2

    const-string v3, "UZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4723
    fill-array-data v2, :array_e3

    const-string v3, "VA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4724
    fill-array-data v2, :array_e4

    const-string v3, "VC"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4725
    fill-array-data v2, :array_e5

    const-string v3, "VE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4726
    fill-array-data v2, :array_e6

    const-string v3, "VG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4727
    fill-array-data v2, :array_e7

    const-string v3, "VI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4728
    fill-array-data v2, :array_e8

    const-string v3, "VN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4729
    fill-array-data v2, :array_e9

    const-string v3, "VU"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4730
    fill-array-data v2, :array_ea

    const-string v3, "WS"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4731
    fill-array-data v2, :array_eb

    const-string v3, "XK"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4732
    fill-array-data v2, :array_ec

    const-string v3, "YE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4733
    fill-array-data v2, :array_ed

    const-string v3, "YT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4734
    fill-array-data v2, :array_ee

    const-string v3, "ZA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 4735
    fill-array-data v2, :array_ef

    const-string v3, "ZM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v1, [I

    .line 4736
    fill-array-data v1, :array_f0

    const-string v2, "ZW"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4737
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 61
    sput-object v0, Landroidx/media2/exoplayer/external/upstream/j;->a:Ljava/util/Map;

    const/4 v0, 0x5

    new-array v1, v0, [J

    .line 64
    fill-array-data v1, :array_f1

    sput-object v1, Landroidx/media2/exoplayer/external/upstream/j;->b:[J

    new-array v1, v0, [J

    .line 68
    fill-array-data v1, :array_f2

    sput-object v1, Landroidx/media2/exoplayer/external/upstream/j;->c:[J

    new-array v1, v0, [J

    .line 72
    fill-array-data v1, :array_f3

    sput-object v1, Landroidx/media2/exoplayer/external/upstream/j;->d:[J

    new-array v0, v0, [J

    .line 76
    fill-array-data v0, :array_f4

    sput-object v0, Landroidx/media2/exoplayer/external/upstream/j;->e:[J

    return-void

    :array_0
    .array-data 4
        0x1
        0x0
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x4
        0x4
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x4
        0x3
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x0
        0x1
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x2
        0x2
        0x3
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x4
        0x2
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x4
        0x2
        0x2
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_a
    .array-data 4
        0x3
        0x3
        0x4
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x2
        0x0
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x1
        0x1
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x1
        0x0
        0x2
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x2
        0x1
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_10
    .array-data 4
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_11
    .array-data 4
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_12
    .array-data 4
        0x2
        0x2
        0x3
        0x2
    .end array-data

    :array_13
    .array-data 4
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_14
    .array-data 4
        0x4
        0x4
        0x3
        0x1
    .end array-data

    :array_15
    .array-data 4
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_16
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data

    :array_17
    .array-data 4
        0x4
        0x3
        0x4
        0x4
    .end array-data

    :array_18
    .array-data 4
        0x4
        0x3
        0x4
        0x4
    .end array-data

    :array_19
    .array-data 4
        0x1
        0x0
        0x2
        0x3
    .end array-data

    :array_1a
    .array-data 4
        0x1
        0x0
        0x0
        0x0
    .end array-data

    :array_1b
    .array-data 4
        0x4
        0x2
        0x3
        0x3
    .end array-data

    :array_1c
    .array-data 4
        0x2
        0x2
        0x3
        0x2
    .end array-data

    :array_1d
    .array-data 4
        0x1
        0x0
        0x3
        0x4
    .end array-data

    :array_1e
    .array-data 4
        0x2
        0x3
        0x3
        0x2
    .end array-data

    :array_1f
    .array-data 4
        0x2
        0x0
        0x1
        0x4
    .end array-data

    :array_20
    .array-data 4
        0x3
        0x0
        0x2
        0x1
    .end array-data

    :array_21
    .array-data 4
        0x4
        0x4
        0x1
        0x2
    .end array-data

    :array_22
    .array-data 4
        0x0
        0x1
        0x1
        0x2
    .end array-data

    :array_23
    .array-data 4
        0x2
        0x2
        0x3
        0x1
    .end array-data

    :array_24
    .array-data 4
        0x0
        0x3
        0x3
        0x3
    .end array-data

    :array_25
    .array-data 4
        0x4
        0x4
        0x3
        0x2
    .end array-data

    :array_26
    .array-data 4
        0x4
        0x3
        0x3
        0x4
    .end array-data

    :array_27
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_28
    .array-data 4
        0x0
        0x0
        0x1
        0x1
    .end array-data

    :array_29
    .array-data 4
        0x3
        0x4
        0x3
        0x3
    .end array-data

    :array_2a
    .array-data 4
        0x2
        0x4
        0x1
        0x0
    .end array-data

    :array_2b
    .array-data 4
        0x2
        0x2
        0x2
        0x3
    .end array-data

    :array_2c
    .array-data 4
        0x3
        0x4
        0x2
        0x1
    .end array-data

    :array_2d
    .array-data 4
        0x2
        0x2
        0x2
        0x3
    .end array-data

    :array_2e
    .array-data 4
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_2f
    .array-data 4
        0x2
        0x2
        0x4
        0x4
    .end array-data

    :array_30
    .array-data 4
        0x4
        0x4
        0x3
        0x1
    .end array-data

    :array_31
    .array-data 4
        0x2
        0x3
        0x2
        0x4
    .end array-data

    :array_32
    .array-data 4
        0x1
        0x0
        0x0
        0x0
    .end array-data

    :array_33
    .array-data 4
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_34
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_35
    .array-data 4
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_36
    .array-data 4
        0x0
        0x2
        0x2
        0x2
    .end array-data

    :array_37
    .array-data 4
        0x3
        0x3
        0x4
        0x0
    .end array-data

    :array_38
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_39
    .array-data 4
        0x1
        0x0
        0x0
        0x3
    .end array-data

    :array_3a
    .array-data 4
        0x3
        0x3
        0x4
        0x4
    .end array-data

    :array_3b
    .array-data 4
        0x3
        0x3
        0x4
        0x4
    .end array-data

    :array_3c
    .array-data 4
        0x2
        0x4
        0x4
        0x2
    .end array-data

    :array_3d
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3e
    .array-data 4
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_3f
    .array-data 4
        0x2
        0x0
        0x3
        0x3
    .end array-data

    :array_40
    .array-data 4
        0x4
        0x2
        0x2
        0x2
    .end array-data

    :array_41
    .array-data 4
        0x0
        0x1
        0x1
        0x1
    .end array-data

    :array_42
    .array-data 4
        0x4
        0x4
        0x4
        0x0
    .end array-data

    :array_43
    .array-data 4
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_44
    .array-data 4
        0x3
        0x1
        0x3
        0x3
    .end array-data

    :array_45
    .array-data 4
        0x4
        0x2
        0x2
        0x3
    .end array-data

    :array_46
    .array-data 4
        0x4
        0x2
        0x4
        0x0
    .end array-data

    :array_47
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_48
    .array-data 4
        0x1
        0x0
        0x3
        0x1
    .end array-data

    :array_49
    .array-data 4
        0x3
        0x3
        0x2
        0x1
    .end array-data

    :array_4a
    .array-data 4
        0x0
        0x1
        0x3
        0x3
    .end array-data

    :array_4b
    .array-data 4
        0x2
        0x0
        0x4
        0x4
    .end array-data

    :array_4c
    .array-data 4
        0x1
        0x1
        0x0
        0x3
    .end array-data

    :array_4d
    .array-data 4
        0x1
        0x2
        0x4
        0x4
    .end array-data

    :array_4e
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4f
    .array-data 4
        0x3
        0x3
        0x3
        0x2
    .end array-data

    :array_50
    .array-data 4
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_51
    .array-data 4
        0x2
        0x2
        0x3
        0x4
    .end array-data

    :array_52
    .array-data 4
        0x4
        0x3
        0x3
        0x2
    .end array-data

    :array_53
    .array-data 4
        0x4
        0x4
        0x4
        0x0
    .end array-data

    :array_54
    .array-data 4
        0x2
        0x2
        0x1
        0x3
    .end array-data

    :array_55
    .array-data 4
        0x4
        0x3
        0x3
        0x0
    .end array-data

    :array_56
    .array-data 4
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_57
    .array-data 4
        0x3
        0x3
        0x3
        0x4
    .end array-data

    :array_58
    .array-data 4
        0x1
        0x2
        0x4
        0x4
    .end array-data

    :array_59
    .array-data 4
        0x4
        0x4
        0x4
        0x0
    .end array-data

    :array_5a
    .array-data 4
        0x3
        0x4
        0x1
        0x0
    .end array-data

    :array_5b
    .array-data 4
        0x0
        0x1
        0x4
        0x4
    .end array-data

    :array_5c
    .array-data 4
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_5d
    .array-data 4
        0x1
        0x0
        0x0
        0x2
    .end array-data

    :array_5e
    .array-data 4
        0x3
        0x4
        0x4
        0x3
    .end array-data

    :array_5f
    .array-data 4
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_60
    .array-data 4
        0x3
        0x2
        0x3
        0x4
    .end array-data

    :array_61
    .array-data 4
        0x0
        0x0
        0x3
        0x2
    .end array-data

    :array_62
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    :array_63
    .array-data 4
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_64
    .array-data 4
        0x2
        0x2
        0x4
        0x4
    .end array-data

    :array_65
    .array-data 4
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_66
    .array-data 4
        0x3
        0x3
        0x4
        0x4
    .end array-data

    :array_67
    .array-data 4
        0x1
        0x0
        0x1
        0x0
    .end array-data

    :array_68
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_69
    .array-data 4
        0x1
        0x0
        0x1
        0x1
    .end array-data

    :array_6a
    .array-data 4
        0x1
        0x0
        0x0
        0x1
    .end array-data

    :array_6b
    .array-data 4
        0x3
        0x2
        0x2
        0x1
    .end array-data

    :array_6c
    .array-data 4
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_6d
    .array-data 4
        0x0
        0x2
        0x2
        0x2
    .end array-data

    :array_6e
    .array-data 4
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_6f
    .array-data 4
        0x1
        0x1
        0x2
        0x3
    .end array-data

    :array_70
    .array-data 4
        0x2
        0x0
        0x4
        0x4
    .end array-data

    :array_71
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_72
    .array-data 4
        0x4
        0x4
        0x3
        0x3
    .end array-data

    :array_73
    .array-data 4
        0x1
        0x0
        0x1
        0x4
    .end array-data

    :array_74
    .array-data 4
        0x1
        0x2
        0x0
        0x2
    .end array-data

    :array_75
    .array-data 4
        0x0
        0x3
        0x0
        0x2
    .end array-data

    :array_76
    .array-data 4
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_77
    .array-data 4
        0x1
        0x1
        0x0
        0x2
    .end array-data

    :array_78
    .array-data 4
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_79
    .array-data 4
        0x2
        0x1
        0x1
        0x0
    .end array-data

    :array_7a
    .array-data 4
        0x3
        0x2
        0x0
        0x0
    .end array-data

    :array_7b
    .array-data 4
        0x2
        0x1
        0x0
        0x0
    .end array-data

    :array_7c
    .array-data 4
        0x0
        0x0
        0x2
        0x2
    .end array-data

    :array_7d
    .array-data 4
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_7e
    .array-data 4
        0x3
        0x4
        0x4
        0x1
    .end array-data

    :array_7f
    .array-data 4
        0x3
        0x3
        0x2
        0x0
    .end array-data

    :array_80
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_81
    .array-data 4
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_82
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_83
    .array-data 4
        0x4
        0x3
        0x4
        0x4
    .end array-data

    :array_84
    .array-data 4
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_85
    .array-data 4
        0x1
        0x0
        0x1
        0x0
    .end array-data

    :array_86
    .array-data 4
        0x1
        0x1
        0x0
        0x0
    .end array-data

    :array_87
    .array-data 4
        0x1
        0x2
        0x2
        0x3
    .end array-data

    :array_88
    .array-data 4
        0x1
        0x4
        0x2
        0x1
    .end array-data

    :array_89
    .array-data 4
        0x3
        0x4
        0x1
        0x3
    .end array-data

    :array_8a
    .array-data 4
        0x4
        0x0
        0x2
        0x3
    .end array-data

    :array_8b
    .array-data 4
        0x1
        0x0
        0x0
        0x0
    .end array-data

    :array_8c
    .array-data 4
        0x4
        0x4
        0x4
        0x3
    .end array-data

    :array_8d
    .array-data 4
        0x2
        0x3
        0x1
        0x2
    .end array-data

    :array_8e
    .array-data 4
        0x2
        0x3
        0x2
        0x4
    .end array-data

    :array_8f
    .array-data 4
        0x0
        0x0
        0x4
        0x4
    .end array-data

    :array_90
    .array-data 4
        0x0
        0x2
        0x4
        0x4
    .end array-data

    :array_91
    .array-data 4
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_92
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_93
    .array-data 4
        0x1
        0x4
        0x0
        0x3
    .end array-data

    :array_94
    .array-data 4
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_95
    .array-data 4
        0x2
        0x2
        0x3
        0x4
    .end array-data

    :array_96
    .array-data 4
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_97
    .array-data 4
        0x4
        0x2
        0x1
        0x1
    .end array-data

    :array_98
    .array-data 4
        0x2
        0x4
        0x3
        0x2
    .end array-data

    :array_99
    .array-data 4
        0x2
        0x2
        0x2
        0x3
    .end array-data

    :array_9a
    .array-data 4
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_9b
    .array-data 4
        0x3
        0x2
        0x2
        0x1
    .end array-data

    :array_9c
    .array-data 4
        0x2
        0x1
        0x3
        0x2
    .end array-data

    :array_9d
    .array-data 4
        0x4
        0x4
        0x4
        0x3
    .end array-data

    :array_9e
    .array-data 4
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_9f
    .array-data 4
        0x3
        0x4
        0x3
        0x2
    .end array-data

    :array_a0
    .array-data 4
        0x3
        0x3
        0x3
        0x4
    .end array-data

    :array_a1
    .array-data 4
        0x0
        0x2
        0x4
        0x3
    .end array-data

    :array_a2
    .array-data 4
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_a3
    .array-data 4
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_a4
    .array-data 4
        0x4
        0x0
        0x4
        0x0
    .end array-data

    :array_a5
    .array-data 4
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_a6
    .array-data 4
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_a7
    .array-data 4
        0x2
        0x2
        0x1
        0x3
    .end array-data

    :array_a8
    .array-data 4
        0x1
        0x3
        0x3
        0x4
    .end array-data

    :array_a9
    .array-data 4
        0x2
        0x3
        0x4
        0x4
    .end array-data

    :array_aa
    .array-data 4
        0x3
        0x1
        0x0
        0x1
    .end array-data

    :array_ab
    .array-data 4
        0x4
        0x3
        0x1
        0x1
    .end array-data

    :array_ac
    .array-data 4
        0x3
        0x0
        0x4
        0x4
    .end array-data

    :array_ad
    .array-data 4
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_ae
    .array-data 4
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_af
    .array-data 4
        0x0
        0x2
        0x0
        0x0
    .end array-data

    :array_b0
    .array-data 4
        0x2
        0x1
        0x3
        0x3
    .end array-data

    :array_b1
    .array-data 4
        0x3
        0x3
        0x1
        0x4
    .end array-data

    :array_b2
    .array-data 4
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_b3
    .array-data 4
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_b4
    .array-data 4
        0x3
        0x1
        0x3
        0x3
    .end array-data

    :array_b5
    .array-data 4
        0x2
        0x3
        0x0
        0x1
    .end array-data

    :array_b6
    .array-data 4
        0x1
        0x0
        0x2
        0x2
    .end array-data

    :array_b7
    .array-data 4
        0x0
        0x1
        0x1
        0x2
    .end array-data

    :array_b8
    .array-data 4
        0x1
        0x2
        0x0
        0x0
    .end array-data

    :array_b9
    .array-data 4
        0x0
        0x1
        0x1
        0x1
    .end array-data

    :array_ba
    .array-data 4
        0x3
        0x4
        0x2
        0x4
    .end array-data

    :array_bb
    .array-data 4
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_bc
    .array-data 4
        0x4
        0x4
        0x3
        0x0
    .end array-data

    :array_bd
    .array-data 4
        0x4
        0x2
        0x0
        0x1
    .end array-data

    :array_be
    .array-data 4
        0x4
        0x4
        0x4
        0x2
    .end array-data

    :array_bf
    .array-data 4
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_c0
    .array-data 4
        0x1
        0x2
        0x3
        0x3
    .end array-data

    :array_c1
    .array-data 4
        0x4
        0x4
        0x2
        0x3
    .end array-data

    :array_c2
    .array-data 4
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_c3
    .array-data 4
        0x0
        0x0
        0x2
        0x0
    .end array-data

    :array_c4
    .array-data 4
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_c5
    .array-data 4
        0x4
        0x3
        0x2
        0x4
    .end array-data

    :array_c6
    .array-data 4
        0x0
        0x0
        0x1
        0x3
    .end array-data

    :array_c7
    .array-data 4
        0x4
        0x4
        0x4
        0x3
    .end array-data

    :array_c8
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_c9
    .array-data 4
        0x3
        0x2
        0x2
        0x4
    .end array-data

    :array_ca
    .array-data 4
        0x4
        0x2
        0x4
        0x2
    .end array-data

    :array_cb
    .array-data 4
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_cc
    .array-data 4
        0x2
        0x3
        0x3
        0x4
    .end array-data

    :array_cd
    .array-data 4
        0x2
        0x4
        0x1
        0x0
    .end array-data

    :array_ce
    .array-data 4
        0x4
        0x4
        0x1
        0x0
    .end array-data

    :array_cf
    .array-data 4
        0x3
        0x4
        0x2
        0x3
    .end array-data

    :array_d0
    .array-data 4
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_d1
    .array-data 4
        0x4
        0x4
        0x4
        0x3
    .end array-data

    :array_d2
    .array-data 4
        0x3
        0x3
        0x1
        0x0
    .end array-data

    :array_d3
    .array-data 4
        0x1
        0x3
        0x4
        0x4
    .end array-data

    :array_d4
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_d5
    .array-data 4
        0x4
        0x2
        0x4
        0x4
    .end array-data

    :array_d6
    .array-data 4
        0x4
        0x1
        0x2
        0x3
    .end array-data

    :array_d7
    .array-data 4
        0x2
        0x1
        0x1
        0x1
    .end array-data

    :array_d8
    .array-data 4
        0x3
        0x3
        0x3
        0x1
    .end array-data

    :array_d9
    .array-data 4
        0x1
        0x2
        0x0
        0x1
    .end array-data

    :array_da
    .array-data 4
        0x2
        0x3
        0x1
        0x2
    .end array-data

    :array_db
    .array-data 4
        0x4
        0x2
        0x2
        0x4
    .end array-data

    :array_dc
    .array-data 4
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_dd
    .array-data 4
        0x3
        0x3
        0x4
        0x3
    .end array-data

    :array_de
    .array-data 4
        0x0
        0x2
        0x1
        0x2
    .end array-data

    :array_df
    .array-data 4
        0x4
        0x3
        0x2
        0x3
    .end array-data

    :array_e0
    .array-data 4
        0x0
        0x1
        0x3
        0x3
    .end array-data

    :array_e1
    .array-data 4
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_e2
    .array-data 4
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_e3
    .array-data 4
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_e4
    .array-data 4
        0x2
        0x1
        0x0
        0x0
    .end array-data

    :array_e5
    .array-data 4
        0x4
        0x4
        0x4
        0x3
    .end array-data

    :array_e6
    .array-data 4
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_e7
    .array-data 4
        0x1
        0x0
        0x2
        0x4
    .end array-data

    :array_e8
    .array-data 4
        0x0
        0x2
        0x4
        0x4
    .end array-data

    :array_e9
    .array-data 4
        0x4
        0x1
        0x3
        0x1
    .end array-data

    :array_ea
    .array-data 4
        0x3
        0x2
        0x3
        0x1
    .end array-data

    :array_eb
    .array-data 4
        0x1
        0x2
        0x1
        0x0
    .end array-data

    :array_ec
    .array-data 4
        0x4
        0x4
        0x4
        0x2
    .end array-data

    :array_ed
    .array-data 4
        0x2
        0x0
        0x2
        0x3
    .end array-data

    :array_ee
    .array-data 4
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_ef
    .array-data 4
        0x3
        0x3
        0x2
        0x1
    .end array-data

    :array_f0
    .array-data 4
        0x3
        0x3
        0x3
        0x1
    .end array-data

    :array_f1
    .array-data 8
        0x5265c0
        0x33e140
        0x1cfde0
        0x10c8e0
        0x61a80
    .end array-data

    :array_f2
    .array-data 8
        0x29810
        0x21ef8
        0x1dc90
        0x1a1f8
        0x15f90
    .end array-data

    :array_f3
    .array-data 8
        0x200b20
        0x13d620
        0xea600
        0xbbfd0
        0x6ddd0
    .end array-data

    :array_f4
    .array-data 8
        0x5b8d80
        0x33e140
        0x200b20
        0x155cc0
        0x8b290
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 263
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sget-object v4, Landroidx/media2/exoplayer/external/util/b;->a:Landroidx/media2/exoplayer/external/util/b;

    const/4 v1, 0x0

    const/16 v3, 0x7d0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/upstream/j;-><init>(Landroid/content/Context;Landroid/util/SparseArray;ILandroidx/media2/exoplayer/external/util/b;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/SparseArray;ILandroidx/media2/exoplayer/external/util/b;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;I",
            "Landroidx/media2/exoplayer/external/util/b;",
            "Z)V"
        }
    .end annotation

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/j;->g:Landroid/content/Context;

    .line 278
    iput-object p2, p0, Landroidx/media2/exoplayer/external/upstream/j;->h:Landroid/util/SparseArray;

    .line 279
    new-instance p2, Landroidx/media2/exoplayer/external/util/f;

    invoke-direct {p2}, Landroidx/media2/exoplayer/external/util/f;-><init>()V

    iput-object p2, p0, Landroidx/media2/exoplayer/external/upstream/j;->i:Landroidx/media2/exoplayer/external/util/f;

    .line 280
    new-instance p2, Landroidx/media2/exoplayer/external/util/s;

    invoke-direct {p2, p3}, Landroidx/media2/exoplayer/external/util/s;-><init>(I)V

    iput-object p2, p0, Landroidx/media2/exoplayer/external/upstream/j;->j:Landroidx/media2/exoplayer/external/util/s;

    .line 281
    iput-object p4, p0, Landroidx/media2/exoplayer/external/upstream/j;->k:Landroidx/media2/exoplayer/external/util/b;

    if-nez p1, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    .line 283
    :cond_1
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/ac;->a(Landroid/content/Context;)I

    move-result p2

    :goto_1
    iput p2, p0, Landroidx/media2/exoplayer/external/upstream/j;->o:I

    .line 284
    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/upstream/j;->a(I)J

    move-result-wide p2

    iput-wide p2, p0, Landroidx/media2/exoplayer/external/upstream/j;->r:J

    if-eqz p1, :cond_2

    if-eqz p5, :cond_2

    .line 288
    invoke-static {p1}, Landroidx/media2/exoplayer/external/upstream/j$b;->a(Landroid/content/Context;)Landroidx/media2/exoplayer/external/upstream/j$b;

    move-result-object p1

    .line 289
    invoke-virtual {p1, p0}, Landroidx/media2/exoplayer/external/upstream/j$b;->a(Landroidx/media2/exoplayer/external/upstream/j;)V

    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/util/SparseArray;ILandroidx/media2/exoplayer/external/util/b;ZLandroidx/media2/exoplayer/external/upstream/j$1;)V
    .locals 0

    .line 54
    invoke-direct/range {p0 .. p5}, Landroidx/media2/exoplayer/external/upstream/j;-><init>(Landroid/content/Context;Landroid/util/SparseArray;ILandroidx/media2/exoplayer/external/util/b;Z)V

    return-void
.end method

.method private a(I)J
    .locals 2

    .line 420
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/j;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    .line 422
    iget-object p1, p0, Landroidx/media2/exoplayer/external/upstream/j;->h:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    :cond_0
    if-nez p1, :cond_1

    const-wide/32 v0, 0xf4240

    .line 425
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 427
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Landroidx/media2/exoplayer/external/upstream/j;
    .locals 9

    const-class v0, Landroidx/media2/exoplayer/external/upstream/j;

    monitor-enter v0

    .line 232
    :try_start_0
    sget-object v1, Landroidx/media2/exoplayer/external/upstream/j;->f:Landroidx/media2/exoplayer/external/upstream/j;

    if-nez v1, :cond_0

    .line 233
    new-instance v1, Landroidx/media2/exoplayer/external/upstream/j$a;

    invoke-direct {v1, p0}, Landroidx/media2/exoplayer/external/upstream/j$a;-><init>(Landroid/content/Context;)V

    .line 1196
    new-instance p0, Landroidx/media2/exoplayer/external/upstream/j;

    iget-object v3, v1, Landroidx/media2/exoplayer/external/upstream/j$a;->a:Landroid/content/Context;

    iget-object v4, v1, Landroidx/media2/exoplayer/external/upstream/j$a;->b:Landroid/util/SparseArray;

    iget v5, v1, Landroidx/media2/exoplayer/external/upstream/j$a;->c:I

    iget-object v6, v1, Landroidx/media2/exoplayer/external/upstream/j$a;->d:Landroidx/media2/exoplayer/external/util/b;

    iget-boolean v7, v1, Landroidx/media2/exoplayer/external/upstream/j$a;->e:Z

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Landroidx/media2/exoplayer/external/upstream/j;-><init>(Landroid/content/Context;Landroid/util/SparseArray;ILandroidx/media2/exoplayer/external/util/b;ZLandroidx/media2/exoplayer/external/upstream/j$1;)V

    .line 233
    sput-object p0, Landroidx/media2/exoplayer/external/upstream/j;->f:Landroidx/media2/exoplayer/external/upstream/j;

    .line 235
    :cond_0
    sget-object p0, Landroidx/media2/exoplayer/external/upstream/j;->f:Landroidx/media2/exoplayer/external/upstream/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(IJJ)V
    .locals 8

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    .line 411
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/j;->s:J

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    return-void

    .line 414
    :cond_0
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/upstream/j;->s:J

    .line 415
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/j;->i:Landroidx/media2/exoplayer/external/util/f;

    new-instance v7, Landroidx/media2/exoplayer/external/upstream/k;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/upstream/k;-><init>(IJJ)V

    invoke-virtual {v0, v7}, Landroidx/media2/exoplayer/external/util/f;->a(Landroidx/media2/exoplayer/external/util/f$a;)V

    return-void
.end method

.method static final synthetic a(IJJLandroidx/media2/exoplayer/external/upstream/c$a;)V
    .locals 0

    .line 416
    invoke-interface {p5}, Landroidx/media2/exoplayer/external/upstream/c$a;->f()V

    return-void
.end method

.method static synthetic a(Landroidx/media2/exoplayer/external/upstream/j;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/j;->c()V

    return-void
.end method

.method private declared-synchronized c()V
    .locals 10

    monitor-enter p0

    .line 380
    :try_start_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/j;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 381
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/j;->u:I

    goto :goto_0

    .line 382
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/j;->g:Landroid/content/Context;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Landroid/content/Context;)I

    move-result v0

    .line 383
    :goto_0
    iget v2, p0, Landroidx/media2/exoplayer/external/upstream/j;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v0, :cond_2

    .line 384
    monitor-exit p0

    return-void

    .line 387
    :cond_2
    :try_start_1
    iput v0, p0, Landroidx/media2/exoplayer/external/upstream/j;->o:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    if-eqz v0, :cond_5

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    goto :goto_2

    .line 396
    :cond_3
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/j;->a(I)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/upstream/j;->r:J

    .line 397
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/j;->k:Landroidx/media2/exoplayer/external/util/b;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/util/b;->a()J

    move-result-wide v2

    .line 398
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/j;->l:I

    if-lez v0, :cond_4

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/upstream/j;->m:J

    sub-long v4, v2, v4

    long-to-int v0, v4

    move v5, v0

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    .line 399
    :goto_1
    iget-wide v6, p0, Landroidx/media2/exoplayer/external/upstream/j;->n:J

    iget-wide v8, p0, Landroidx/media2/exoplayer/external/upstream/j;->r:J

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroidx/media2/exoplayer/external/upstream/j;->a(IJJ)V

    .line 402
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/upstream/j;->m:J

    const-wide/16 v2, 0x0

    .line 403
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/upstream/j;->n:J

    .line 404
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/upstream/j;->q:J

    .line 405
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/upstream/j;->p:J

    .line 406
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/j;->j:Landroidx/media2/exoplayer/external/util/s;

    .line 4076
    iget-object v2, v0, Landroidx/media2/exoplayer/external/util/s;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, -0x1

    .line 4077
    iput v2, v0, Landroidx/media2/exoplayer/external/util/s;->f:I

    .line 4078
    iput v1, v0, Landroidx/media2/exoplayer/external/util/s;->g:I

    .line 4079
    iput v1, v0, Landroidx/media2/exoplayer/external/util/s;->h:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    monitor-exit p0

    return-void

    .line 392
    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()J
    .locals 2

    monitor-enter p0

    .line 309
    :try_start_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/j;->r:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/os/Handler;Landroidx/media2/exoplayer/external/upstream/c$a;)V
    .locals 1

    .line 320
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/j;->i:Landroidx/media2/exoplayer/external/util/f;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/util/f;->a(Landroid/os/Handler;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/upstream/c$a;)V
    .locals 1

    .line 325
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/j;->i:Landroidx/media2/exoplayer/external/util/f;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/util/f;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized a(Z)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 337
    monitor-exit p0

    return-void

    .line 339
    :cond_0
    :try_start_0
    iget p1, p0, Landroidx/media2/exoplayer/external/upstream/j;->l:I

    if-nez p1, :cond_1

    .line 340
    iget-object p1, p0, Landroidx/media2/exoplayer/external/upstream/j;->k:Landroidx/media2/exoplayer/external/util/b;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/util/b;->a()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/j;->m:J

    .line 342
    :cond_1
    iget p1, p0, Landroidx/media2/exoplayer/external/upstream/j;->l:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media2/exoplayer/external/upstream/j;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(ZI)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 349
    monitor-exit p0

    return-void

    .line 351
    :cond_0
    :try_start_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/j;->n:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/j;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Landroidx/media2/exoplayer/external/upstream/w;
    .locals 0

    return-object p0
.end method

.method public final declared-synchronized b(Z)V
    .locals 12

    monitor-enter p0

    if-nez p1, :cond_0

    .line 357
    monitor-exit p0

    return-void

    .line 359
    :cond_0
    :try_start_0
    iget p1, p0, Landroidx/media2/exoplayer/external/upstream/j;->l:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 360
    iget-object p1, p0, Landroidx/media2/exoplayer/external/upstream/j;->k:Landroidx/media2/exoplayer/external/util/b;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/util/b;->a()J

    move-result-wide v2

    .line 361
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/upstream/j;->m:J

    sub-long v4, v2, v4

    long-to-int v7, v4

    .line 362
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/upstream/j;->p:J

    int-to-long v8, v7

    add-long/2addr v4, v8

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/upstream/j;->p:J

    .line 363
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/upstream/j;->q:J

    iget-wide v8, p0, Landroidx/media2/exoplayer/external/upstream/j;->n:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/upstream/j;->q:J

    if-lez v7, :cond_d

    long-to-float p1, v8

    const/high16 v4, 0x45fa0000    # 8000.0f

    mul-float p1, p1, v4

    int-to-float v4, v7

    div-float/2addr p1, v4

    .line 366
    iget-object v4, p0, Landroidx/media2/exoplayer/external/upstream/j;->j:Landroidx/media2/exoplayer/external/util/s;

    long-to-double v5, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 2140
    iget v6, v4, Landroidx/media2/exoplayer/external/util/s;->f:I

    if-eq v6, v1, :cond_2

    .line 2141
    iget-object v6, v4, Landroidx/media2/exoplayer/external/util/s;->d:Ljava/util/ArrayList;

    sget-object v8, Landroidx/media2/exoplayer/external/util/s;->a:Ljava/util/Comparator;

    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2142
    iput v1, v4, Landroidx/media2/exoplayer/external/util/s;->f:I

    .line 2091
    :cond_2
    iget v6, v4, Landroidx/media2/exoplayer/external/util/s;->i:I

    if-lez v6, :cond_3

    iget-object v6, v4, Landroidx/media2/exoplayer/external/util/s;->e:[Landroidx/media2/exoplayer/external/util/s$a;

    iget v8, v4, Landroidx/media2/exoplayer/external/util/s;->i:I

    sub-int/2addr v8, v1

    iput v8, v4, Landroidx/media2/exoplayer/external/util/s;->i:I

    aget-object v6, v6, v8

    goto :goto_1

    .line 2092
    :cond_3
    new-instance v6, Landroidx/media2/exoplayer/external/util/s$a;

    const/4 v8, 0x0

    invoke-direct {v6, v8}, Landroidx/media2/exoplayer/external/util/s$a;-><init>(Landroidx/media2/exoplayer/external/util/s$1;)V

    .line 2093
    :goto_1
    iget v8, v4, Landroidx/media2/exoplayer/external/util/s;->g:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v4, Landroidx/media2/exoplayer/external/util/s;->g:I

    iput v8, v6, Landroidx/media2/exoplayer/external/util/s$a;->a:I

    .line 2094
    iput v5, v6, Landroidx/media2/exoplayer/external/util/s$a;->b:I

    .line 2095
    iput p1, v6, Landroidx/media2/exoplayer/external/util/s$a;->c:F

    .line 2096
    iget-object p1, v4, Landroidx/media2/exoplayer/external/util/s;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2097
    iget p1, v4, Landroidx/media2/exoplayer/external/util/s;->h:I

    add-int/2addr p1, v5

    iput p1, v4, Landroidx/media2/exoplayer/external/util/s;->h:I

    .line 2099
    :cond_4
    :goto_2
    iget p1, v4, Landroidx/media2/exoplayer/external/util/s;->h:I

    iget v5, v4, Landroidx/media2/exoplayer/external/util/s;->c:I

    if-le p1, v5, :cond_6

    .line 2100
    iget p1, v4, Landroidx/media2/exoplayer/external/util/s;->h:I

    iget v5, v4, Landroidx/media2/exoplayer/external/util/s;->c:I

    sub-int/2addr p1, v5

    .line 2101
    iget-object v5, v4, Landroidx/media2/exoplayer/external/util/s;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/util/s$a;

    .line 2102
    iget v6, v5, Landroidx/media2/exoplayer/external/util/s$a;->b:I

    if-gt v6, p1, :cond_5

    .line 2103
    iget p1, v4, Landroidx/media2/exoplayer/external/util/s;->h:I

    iget v6, v5, Landroidx/media2/exoplayer/external/util/s$a;->b:I

    sub-int/2addr p1, v6

    iput p1, v4, Landroidx/media2/exoplayer/external/util/s;->h:I

    .line 2104
    iget-object p1, v4, Landroidx/media2/exoplayer/external/util/s;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2105
    iget p1, v4, Landroidx/media2/exoplayer/external/util/s;->i:I

    const/4 v6, 0x5

    if-ge p1, v6, :cond_4

    .line 2106
    iget-object p1, v4, Landroidx/media2/exoplayer/external/util/s;->e:[Landroidx/media2/exoplayer/external/util/s$a;

    iget v6, v4, Landroidx/media2/exoplayer/external/util/s;->i:I

    add-int/lit8 v8, v6, 0x1

    iput v8, v4, Landroidx/media2/exoplayer/external/util/s;->i:I

    aput-object v5, p1, v6

    goto :goto_2

    .line 2109
    :cond_5
    iget v6, v5, Landroidx/media2/exoplayer/external/util/s$a;->b:I

    sub-int/2addr v6, p1

    iput v6, v5, Landroidx/media2/exoplayer/external/util/s$a;->b:I

    .line 2110
    iget v5, v4, Landroidx/media2/exoplayer/external/util/s;->h:I

    sub-int/2addr v5, p1

    iput v5, v4, Landroidx/media2/exoplayer/external/util/s;->h:I

    goto :goto_2

    .line 367
    :cond_6
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/upstream/j;->p:J

    const-wide/16 v8, 0x7d0

    cmp-long p1, v4, v8

    if-gez p1, :cond_7

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/upstream/j;->q:J

    const-wide/32 v8, 0x80000

    cmp-long p1, v4, v8

    if-ltz p1, :cond_c

    .line 369
    :cond_7
    iget-object p1, p0, Landroidx/media2/exoplayer/external/upstream/j;->j:Landroidx/media2/exoplayer/external/util/s;

    .line 3150
    iget v4, p1, Landroidx/media2/exoplayer/external/util/s;->f:I

    if-eqz v4, :cond_8

    .line 3151
    iget-object v4, p1, Landroidx/media2/exoplayer/external/util/s;->d:Ljava/util/ArrayList;

    sget-object v5, Landroidx/media2/exoplayer/external/util/s;->b:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3152
    iput v0, p1, Landroidx/media2/exoplayer/external/util/s;->f:I

    :cond_8
    const/high16 v4, 0x3f000000    # 0.5f

    .line 3123
    iget v5, p1, Landroidx/media2/exoplayer/external/util/s;->h:I

    int-to-float v5, v5

    mul-float v5, v5, v4

    const/4 v4, 0x0

    .line 3125
    :goto_3
    iget-object v6, p1, Landroidx/media2/exoplayer/external/util/s;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_a

    .line 3126
    iget-object v6, p1, Landroidx/media2/exoplayer/external/util/s;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/exoplayer/external/util/s$a;

    .line 3127
    iget v8, v6, Landroidx/media2/exoplayer/external/util/s$a;->b:I

    add-int/2addr v4, v8

    int-to-float v8, v4

    cmpl-float v8, v8, v5

    if-ltz v8, :cond_9

    .line 3129
    iget p1, v6, Landroidx/media2/exoplayer/external/util/s$a;->c:F

    goto :goto_4

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3133
    :cond_a
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/s;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const/high16 p1, 0x7fc00000    # Float.NaN

    goto :goto_4

    :cond_b
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/s;->d:Ljava/util/ArrayList;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/util/s;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/util/s$a;

    iget p1, p1, Landroidx/media2/exoplayer/external/util/s$a;->c:F

    :goto_4
    float-to-long v4, p1

    .line 369
    iput-wide v4, p0, Landroidx/media2/exoplayer/external/upstream/j;->r:J

    .line 371
    :cond_c
    iget-wide v8, p0, Landroidx/media2/exoplayer/external/upstream/j;->n:J

    iget-wide v10, p0, Landroidx/media2/exoplayer/external/upstream/j;->r:J

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Landroidx/media2/exoplayer/external/upstream/j;->a(IJJ)V

    .line 372
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/upstream/j;->m:J

    const-wide/16 v2, 0x0

    .line 373
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/upstream/j;->n:J

    .line 375
    :cond_d
    iget p1, p0, Landroidx/media2/exoplayer/external/upstream/j;->l:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/media2/exoplayer/external/upstream/j;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
