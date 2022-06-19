.class public abstract Landroidx/media2/session/c$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/c$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 151
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "androidx.media2.session.IMediaSession"

    .line 152
    invoke-virtual {p0, p0, v0}, Landroidx/media2/session/c$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Landroidx/media2/session/c;
    .locals 1

    .line 1643
    sget-object v0, Landroidx/media2/session/c$a$a;->a:Landroidx/media2/session/c;

    return-object v0
.end method

.method public static a(Landroid/os/IBinder;)Landroidx/media2/session/c;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "androidx.media2.session.IMediaSession"

    .line 163
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    instance-of v1, v0, Landroidx/media2/session/c;

    if-eqz v1, :cond_1

    .line 165
    check-cast v0, Landroidx/media2/session/c;

    return-object v0

    .line 167
    :cond_1
    new-instance v0, Landroidx/media2/session/c$a$a;

    invoke-direct {v0, p0}, Landroidx/media2/session/c$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "androidx.media2.session.IMediaSession"

    if-eq p1, v0, :cond_11

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 752
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 408
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 414
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    .line 415
    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/Uri;

    goto :goto_0

    :cond_0
    move-object p4, v0

    .line 421
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 427
    :cond_1
    invoke-virtual {p0, p1, p3, p4, v0}, Landroidx/media2/session/c$a;->a(Landroidx/media2/session/b;ILandroid/net/Uri;Landroid/os/Bundle;)V

    return v1

    .line 489
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 498
    invoke-virtual {p0, p1, p3, p4, p2}, Landroidx/media2/session/c$a;->c(Landroidx/media2/session/b;III)V

    return v1

    .line 593
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 599
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 600
    sget-object p4, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    .line 605
    :cond_2
    invoke-virtual {p0, p1, p3, v0}, Landroidx/media2/session/c$a;->d(Landroidx/media2/session/b;ILandroidx/versionedparcelable/ParcelImpl;)V

    return v1

    .line 576
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 580
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 582
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3

    .line 583
    sget-object p4, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    .line 588
    :cond_3
    invoke-virtual {p0, p1, p3, v0}, Landroidx/media2/session/c$a;->c(Landroidx/media2/session/b;ILandroidx/versionedparcelable/ParcelImpl;)V

    return v1

    .line 559
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_4

    .line 566
    sget-object p4, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/view/Surface;

    .line 571
    :cond_4
    invoke-virtual {p0, p1, p3, v0}, Landroidx/media2/session/c$a;->a(Landroidx/media2/session/b;ILandroid/view/Surface;)V

    return v1

    .line 740
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 744
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 746
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 747
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media2/session/c$a;->c(Landroidx/media2/session/b;ILjava/lang/String;)V

    return v1

    .line 721
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 725
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 727
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 729
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 730
    sget-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    .line 735
    :cond_5
    invoke-virtual {p0, p1, p3, p4, v0}, Landroidx/media2/session/c$a;->c(Landroidx/media2/session/b;ILjava/lang/String;Landroidx/versionedparcelable/ParcelImpl;)V

    return v1

    .line 698
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object v3

    .line 702
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 704
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 706
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 708
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 710
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 711
    sget-object p1, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    :cond_6
    move-object v8, v0

    move-object v2, p0

    .line 716
    invoke-virtual/range {v2 .. v8}, Landroidx/media2/session/c$a;->b(Landroidx/media2/session/b;ILjava/lang/String;IILandroidx/versionedparcelable/ParcelImpl;)V

    return v1

    .line 679
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 683
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 685
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 687
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 688
    sget-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    .line 693
    :cond_7
    invoke-virtual {p0, p1, p3, p4, v0}, Landroidx/media2/session/c$a;->b(Landroidx/media2/session/b;ILjava/lang/String;Landroidx/versionedparcelable/ParcelImpl;)V

    return v1

    .line 656
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object v3

    .line 660
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 662
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 664
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 666
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 668
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 669
    sget-object p1, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    :cond_8
    move-object v8, v0

    move-object v2, p0

    .line 674
    invoke-virtual/range {v2 .. v8}, Landroidx/media2/session/c$a;->a(Landroidx/media2/session/b;ILjava/lang/String;IILandroidx/versionedparcelable/ParcelImpl;)V

    return v1

    .line 644
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 648
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 650
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 651
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media2/session/c$a;->b(Landroidx/media2/session/b;ILjava/lang/String;)V

    return v1

    .line 627
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 631
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 633
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_9

    .line 634
    sget-object p4, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    .line 639
    :cond_9
    invoke-virtual {p0, p1, p3, v0}, Landroidx/media2/session/c$a;->f(Landroidx/media2/session/b;ILandroidx/versionedparcelable/ParcelImpl;)V

    return v1

    .line 610
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_a

    .line 617
    sget-object p4, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    .line 622
    :cond_a
    invoke-virtual {p0, p1, p3, v0}, Landroidx/media2/session/c$a;->e(Landroidx/media2/session/b;ILandroidx/versionedparcelable/ParcelImpl;)V

    return v1

    .line 547
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 551
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 553
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 554
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media2/session/c$a;->d(Landroidx/media2/session/b;II)V

    return v1

    .line 535
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 541
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 542
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media2/session/c$a;->c(Landroidx/media2/session/b;II)V

    return v1

    .line 525
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 529
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 530
    invoke-virtual {p0, p1, p2}, Landroidx/media2/session/c$a;->j(Landroidx/media2/session/b;I)V

    return v1

    .line 515
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 520
    invoke-virtual {p0, p1, p2}, Landroidx/media2/session/c$a;->i(Landroidx/media2/session/b;I)V

    return v1

    .line 503
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 510
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media2/session/c$a;->b(Landroidx/media2/session/b;II)V

    return v1

    .line 475
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 481
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 484
    invoke-virtual {p0, p1, p3, p4, p2}, Landroidx/media2/session/c$a;->b(Landroidx/media2/session/b;IILjava/lang/String;)V

    return v1

    .line 463
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 470
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media2/session/c$a;->a(Landroidx/media2/session/b;II)V

    return v1

    .line 449
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 458
    invoke-virtual {p0, p1, p3, p4, p2}, Landroidx/media2/session/c$a;->a(Landroidx/media2/session/b;IILjava/lang/String;)V

    return v1

    .line 432
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_b

    .line 439
    sget-object p4, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    .line 444
    :cond_b
    invoke-virtual {p0, p1, p3, v0}, Landroidx/media2/session/c$a;->b(Landroidx/media2/session/b;ILandroidx/versionedparcelable/ParcelImpl;)V

    return v1

    .line 396
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 403
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media2/session/c$a;->a(Landroidx/media2/session/b;ILjava/lang/String;)V

    return v1

    .line 377
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p4

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    .line 386
    sget-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    .line 391
    :cond_c
    invoke-virtual {p0, p1, p3, p4, v0}, Landroidx/media2/session/c$a;->a(Landroidx/media2/session/b;ILjava/util/List;Landroidx/versionedparcelable/ParcelImpl;)V

    return v1

    .line 365
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 372
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media2/session/c$a;->a(Landroidx/media2/session/b;IF)V

    return v1

    .line 346
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    .line 355
    sget-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    .line 360
    :cond_d
    invoke-virtual {p0, p1, p3, p4, v0}, Landroidx/media2/session/c$a;->a(Landroidx/media2/session/b;ILjava/lang/String;Landroidx/versionedparcelable/ParcelImpl;)V

    return v1

    .line 322
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_e

    .line 329
    sget-object p4, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_1

    :cond_e
    move-object p4, v0

    .line 335
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    .line 336
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 341
    :cond_f
    invoke-virtual {p0, p1, p3, p4, v0}, Landroidx/media2/session/c$a;->a(Landroidx/media2/session/b;ILandroidx/versionedparcelable/ParcelImpl;Landroid/os/Bundle;)V

    return v1

    .line 310
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 317
    invoke-virtual {p0, p1, p3, v2, v3}, Landroidx/media2/session/c$a;->a(Landroidx/media2/session/b;IJ)V

    return v1

    .line 300
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 305
    invoke-virtual {p0, p1, p2}, Landroidx/media2/session/c$a;->h(Landroidx/media2/session/b;I)V

    return v1

    .line 290
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 295
    invoke-virtual {p0, p1, p2}, Landroidx/media2/session/c$a;->g(Landroidx/media2/session/b;I)V

    return v1

    .line 280
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 285
    invoke-virtual {p0, p1, p2}, Landroidx/media2/session/c$a;->f(Landroidx/media2/session/b;I)V

    return v1

    .line 270
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 275
    invoke-virtual {p0, p1, p2}, Landroidx/media2/session/c$a;->e(Landroidx/media2/session/b;I)V

    return v1

    .line 260
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 265
    invoke-virtual {p0, p1, p2}, Landroidx/media2/session/c$a;->d(Landroidx/media2/session/b;I)V

    return v1

    .line 250
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 255
    invoke-virtual {p0, p1, p2}, Landroidx/media2/session/c$a;->c(Landroidx/media2/session/b;I)V

    return v1

    .line 240
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 245
    invoke-virtual {p0, p1, p2}, Landroidx/media2/session/c$a;->b(Landroidx/media2/session/b;I)V

    return v1

    .line 226
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 235
    invoke-virtual {p0, p1, p3, p4, p2}, Landroidx/media2/session/c$a;->b(Landroidx/media2/session/b;III)V

    return v1

    .line 212
    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 221
    invoke-virtual {p0, p1, p3, p4, p2}, Landroidx/media2/session/c$a;->a(Landroidx/media2/session/b;III)V

    return v1

    .line 202
    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 207
    invoke-virtual {p0, p1, p2}, Landroidx/media2/session/c$a;->a(Landroidx/media2/session/b;I)V

    return v1

    .line 185
    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_10

    .line 192
    sget-object p4, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    .line 197
    :cond_10
    invoke-virtual {p0, p1, p3, v0}, Landroidx/media2/session/c$a;->a(Landroidx/media2/session/b;ILandroidx/versionedparcelable/ParcelImpl;)V

    return v1

    .line 180
    :cond_11
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
