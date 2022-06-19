.class Landroidx/core/app/j;
.super Ljava/lang/Object;
.source "NotificationCompatJellybean.java"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Ljava/lang/reflect/Field;

.field private static c:Z

.field private static final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/app/j;->a:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/app/j;->d:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/app/Notification$Builder;Landroidx/core/app/h$a;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 140
    invoke-virtual {p1}, Landroidx/core/app/h$a;->a()I

    move-result v0

    invoke-virtual {p1}, Landroidx/core/app/h$a;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/app/h$a;->c()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 141
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroidx/core/app/h$a;->d()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p1}, Landroidx/core/app/h$a;->f()[Landroidx/core/app/k;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 143
    const-string/jumbo v1, "android.support.remoteInputs"

    .line 144
    invoke-virtual {p1}, Landroidx/core/app/h$a;->f()[Landroidx/core/app/k;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/app/j;->a([Landroidx/core/app/k;)[Landroid/os/Bundle;

    move-result-object v2

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 146
    :cond_0
    invoke-virtual {p1}, Landroidx/core/app/h$a;->h()[Landroidx/core/app/k;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 147
    const-string/jumbo v1, "android.support.dataRemoteInputs"

    .line 148
    invoke-virtual {p1}, Landroidx/core/app/h$a;->h()[Landroidx/core/app/k;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/app/j;->a([Landroidx/core/app/k;)[Landroid/os/Bundle;

    move-result-object v2

    .line 147
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 150
    :cond_1
    const-string/jumbo v1, "android.support.allowGeneratedReplies"

    .line 151
    invoke-virtual {p1}, Landroidx/core/app/h$a;->e()Z

    move-result v2

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 152
    return-object v0
.end method

.method public static a(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 89
    sget-object v2, Landroidx/core/app/j;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 90
    :try_start_0
    sget-boolean v0, Landroidx/core/app/j;->c:Z

    if-eqz v0, :cond_0

    .line 91
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 116
    :goto_0
    return-object v0

    .line 94
    :cond_0
    :try_start_1
    sget-object v0, Landroidx/core/app/j;->b:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2

    .line 95
    const-class v0, Landroid/app/Notification;

    const-string/jumbo v3, "extras"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 96
    const-class v3, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 97
    const-string/jumbo v0, "NotificationCompat"

    const-string/jumbo v3, "Notification.extras field is not of type Bundle"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/core/app/j;->c:Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 101
    :cond_1
    const/4 v3, 0x1

    :try_start_3
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 102
    sput-object v0, Landroidx/core/app/j;->b:Ljava/lang/reflect/Field;

    .line 104
    :cond_2
    sget-object v0, Landroidx/core/app/j;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 105
    if-nez v0, :cond_3

    .line 106
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 107
    sget-object v3, Landroidx/core/app/j;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    :cond_3
    :try_start_4
    monitor-exit v2

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    :try_start_5
    const-string/jumbo v3, "NotificationCompat"

    const-string/jumbo v4, "Unable to access notification extras"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/core/app/j;->c:Z

    .line 116
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 112
    :catch_1
    move-exception v0

    .line 113
    const-string/jumbo v3, "NotificationCompat"

    const-string/jumbo v4, "Unable to access notification extras"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method static a(Landroidx/core/app/h$a;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 248
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 249
    const-string/jumbo v0, "icon"

    invoke-virtual {p0}, Landroidx/core/app/h$a;->a()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    const-string/jumbo v0, "title"

    invoke-virtual {p0}, Landroidx/core/app/h$a;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 251
    const-string/jumbo v0, "actionIntent"

    invoke-virtual {p0}, Landroidx/core/app/h$a;->c()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 253
    invoke-virtual {p0}, Landroidx/core/app/h$a;->d()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroidx/core/app/h$a;->d()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 258
    :goto_0
    const-string/jumbo v2, "android.support.allowGeneratedReplies"

    .line 259
    invoke-virtual {p0}, Landroidx/core/app/h$a;->e()Z

    move-result v3

    .line 258
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 260
    const-string/jumbo v2, "extras"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 261
    const-string/jumbo v0, "remoteInputs"

    invoke-virtual {p0}, Landroidx/core/app/h$a;->f()[Landroidx/core/app/k;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/app/j;->a([Landroidx/core/app/k;)[Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 262
    const-string/jumbo v0, "showsUserInterface"

    invoke-virtual {p0}, Landroidx/core/app/h$a;->i()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 263
    const-string/jumbo v0, "semanticAction"

    invoke-virtual {p0}, Landroidx/core/app/h$a;->g()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 264
    return-object v1

    .line 256
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method private static a(Landroidx/core/app/k;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 285
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 286
    const-string/jumbo v0, "resultKey"

    invoke-virtual {p0}, Landroidx/core/app/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string/jumbo v0, "label"

    invoke-virtual {p0}, Landroidx/core/app/k;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 288
    const-string/jumbo v0, "choices"

    invoke-virtual {p0}, Landroidx/core/app/k;->c()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 289
    const-string/jumbo v0, "allowFreeFormInput"

    invoke-virtual {p0}, Landroidx/core/app/k;->e()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 290
    const-string/jumbo v0, "extras"

    invoke-virtual {p0}, Landroidx/core/app/k;->f()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 292
    invoke-virtual {p0}, Landroidx/core/app/k;->d()Ljava/util/Set;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 294
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 295
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 296
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 298
    :cond_0
    const-string/jumbo v0, "allowedDataTypes"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 300
    :cond_1
    return-object v1
.end method

.method public static a(Ljava/util/List;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 72
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 73
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 74
    if-eqz v0, :cond_1

    .line 75
    if-nez v1, :cond_0

    .line 76
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 78
    :cond_0
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 81
    :cond_2
    return-object v1
.end method

.method private static a([Landroidx/core/app/k;)[Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 315
    if-nez p0, :cond_0

    .line 316
    const/4 v0, 0x0

    .line 322
    :goto_0
    return-object v0

    .line 318
    :cond_0
    array-length v0, p0

    new-array v1, v0, [Landroid/os/Bundle;

    .line 319
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 320
    aget-object v2, p0, v0

    invoke-static {v2}, Landroidx/core/app/j;->a(Landroidx/core/app/k;)Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v1, v0

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 322
    goto :goto_0
.end method
