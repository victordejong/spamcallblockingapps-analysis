.class public Lcom/callapp/contacts/manager/sim/SimManager$DualSim;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/sim/SimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DualSim"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Landroid/telecom/PhoneAccount;

.field private final f:Landroid/telecom/PhoneAccount;


# direct methods
.method public constructor <init>(Landroid/telecom/PhoneAccount;Landroid/telecom/PhoneAccount;)V
    .locals 0

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    iput-object p1, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->e:Landroid/telecom/PhoneAccount;

    .line 474
    iput-object p2, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->f:Landroid/telecom/PhoneAccount;

    const/4 p1, 0x0

    .line 476
    iput p1, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->c:I

    const/4 p1, 0x0

    .line 477
    iput-object p1, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->d:Ljava/lang/String;

    .line 478
    iput-object p1, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->a:Ljava/lang/String;

    .line 479
    iput-object p1, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    iput-object p1, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->a:Ljava/lang/String;

    .line 484
    iput-object p2, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->b:Ljava/lang/String;

    .line 485
    iput p3, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->c:I

    .line 486
    invoke-direct {p0}, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->getSimColumnName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 488
    iput-object p1, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->e:Landroid/telecom/PhoneAccount;

    .line 489
    iput-object p1, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->f:Landroid/telecom/PhoneAccount;

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 10

    .line 523
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string v0, "android.permission.READ_CALL_LOG"

    invoke-static {v0}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 529
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id DESC  LIMIT 1"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :try_start_1
    const-string v2, "sim_id"

    const-string v3, "simid"

    const-string v4, "sub_id"

    const-string v5, "subscription_id"

    const-string v6, "sim_slot"

    const-string v7, "sim_sn"

    const-string v8, "subscription"

    .line 532
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    .line 533
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    .line 534
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x7

    if-ge v4, v5, :cond_2

    .line 535
    aget-object v5, v2, v4

    .line 536
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_1

    move-object v1, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v0, v1

    .line 543
    :goto_1
    :try_start_2
    const-class v3, Lcom/callapp/contacts/manager/sim/SimManager;

    invoke-static {v3, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 545
    :cond_2
    :goto_2
    invoke-static {v0}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    return-object v1

    :catchall_1
    move-exception v1

    :goto_3
    invoke-static {v0}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    .line 546
    throw v1
.end method

.method static synthetic a(Lcom/callapp/contacts/manager/sim/SimManager$DualSim;)Ljava/lang/String;
    .locals 0

    .line 462
    iget-object p0, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/manager/sim/SimManager$DualSim;)I
    .locals 0

    .line 462
    iget p0, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->c:I

    return p0
.end method

.method static synthetic c(Lcom/callapp/contacts/manager/sim/SimManager$DualSim;)Landroid/telecom/PhoneAccount;
    .locals 0

    .line 462
    iget-object p0, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->e:Landroid/telecom/PhoneAccount;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/manager/sim/SimManager$DualSim;)Landroid/telecom/PhoneAccount;
    .locals 0

    .line 462
    iget-object p0, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->f:Landroid/telecom/PhoneAccount;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/manager/sim/SimManager$DualSim;)Ljava/lang/String;
    .locals 0

    .line 462
    iget-object p0, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/manager/sim/SimManager$DualSim;)Ljava/lang/String;
    .locals 0

    .line 462
    iget-object p0, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->b:Ljava/lang/String;

    return-object p0
.end method

.method private getSimColumnName()Ljava/lang/String;
    .locals 2

    .line 493
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bS:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 494
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    invoke-static {}, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->a()Ljava/lang/String;

    move-result-object v0

    .line 496
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bS:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 554
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 556
    :cond_1
    check-cast p1, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    .line 558
    iget v1, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->c:I

    iget v2, p1, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->c:I

    if-eq v1, v2, :cond_2

    return v0

    .line 559
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 561
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 563
    :cond_4
    iget-object v1, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 565
    :cond_5
    iget-object v1, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->e:Landroid/telecom/PhoneAccount;

    iget-object v2, p1, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->e:Landroid/telecom/PhoneAccount;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 567
    :cond_6
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->f:Landroid/telecom/PhoneAccount;

    iget-object p1, p1, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->f:Landroid/telecom/PhoneAccount;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7
    :goto_0
    return v0
.end method

.method public getOperator1()Ljava/lang/String;
    .locals 2

    .line 502
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 503
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->e:Landroid/telecom/PhoneAccount;

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator2()Ljava/lang/String;
    .locals 2

    .line 512
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 513
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->f:Landroid/telecom/PhoneAccount;

    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->b:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 572
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 573
    iget-object v2, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 574
    iget v2, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 575
    iget-object v2, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->d:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 576
    iget-object v2, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->e:Landroid/telecom/PhoneAccount;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/telecom/PhoneAccount;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 577
    iget-object v2, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->f:Landroid/telecom/PhoneAccount;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/telecom/PhoneAccount;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DualSim{operator1=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", operator2=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", minDefaultSlotId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", simManagerColumnName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", account1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->e:Landroid/telecom/PhoneAccount;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", account2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->f:Landroid/telecom/PhoneAccount;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
