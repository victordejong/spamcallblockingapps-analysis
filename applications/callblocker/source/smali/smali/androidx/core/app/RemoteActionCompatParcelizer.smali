.class public Landroidx/core/app/RemoteActionCompatParcelizer;
.super Ljava/lang/Object;
.source "RemoteActionCompatParcelizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/core/app/RemoteActionCompat;
    .locals 3

    .prologue
    .line 14
    new-instance v1, Landroidx/core/app/RemoteActionCompat;

    invoke-direct {v1}, Landroidx/core/app/RemoteActionCompat;-><init>()V

    .line 15
    iget-object v0, v1, Landroidx/core/app/RemoteActionCompat;->a:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(Landroidx/versionedparcelable/c;I)Landroidx/versionedparcelable/c;

    move-result-object v0

    check-cast v0, Landroidx/core/graphics/drawable/IconCompat;

    iput-object v0, v1, Landroidx/core/app/RemoteActionCompat;->a:Landroidx/core/graphics/drawable/IconCompat;

    .line 16
    iget-object v0, v1, Landroidx/core/app/RemoteActionCompat;->b:Ljava/lang/CharSequence;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Landroidx/core/app/RemoteActionCompat;->b:Ljava/lang/CharSequence;

    .line 17
    iget-object v0, v1, Landroidx/core/app/RemoteActionCompat;->c:Ljava/lang/CharSequence;

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Landroidx/core/app/RemoteActionCompat;->c:Ljava/lang/CharSequence;

    .line 18
    iget-object v0, v1, Landroidx/core/app/RemoteActionCompat;->d:Landroid/app/PendingIntent;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, v1, Landroidx/core/app/RemoteActionCompat;->d:Landroid/app/PendingIntent;

    .line 19
    iget-boolean v0, v1, Landroidx/core/app/RemoteActionCompat;->e:Z

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(ZI)Z

    move-result v0

    iput-boolean v0, v1, Landroidx/core/app/RemoteActionCompat;->e:Z

    .line 20
    iget-boolean v0, v1, Landroidx/core/app/RemoteActionCompat;->f:Z

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(ZI)Z

    move-result v0

    iput-boolean v0, v1, Landroidx/core/app/RemoteActionCompat;->f:Z

    .line 21
    return-object v1
.end method

.method public static write(Landroidx/core/app/RemoteActionCompat;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->a(ZZ)V

    .line 27
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->a:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(Landroidx/versionedparcelable/c;I)V

    .line 28
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->b:Ljava/lang/CharSequence;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(Ljava/lang/CharSequence;I)V

    .line 29
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->c:Ljava/lang/CharSequence;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(Ljava/lang/CharSequence;I)V

    .line 30
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->d:Landroid/app/PendingIntent;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(Landroid/os/Parcelable;I)V

    .line 31
    iget-boolean v0, p0, Landroidx/core/app/RemoteActionCompat;->e:Z

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(ZI)V

    .line 32
    iget-boolean v0, p0, Landroidx/core/app/RemoteActionCompat;->f:Z

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(ZI)V

    .line 33
    return-void
.end method
