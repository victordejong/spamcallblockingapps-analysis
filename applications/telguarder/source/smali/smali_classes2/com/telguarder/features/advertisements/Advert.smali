.class public Lcom/telguarder/features/advertisements/Advert;
.super Ljava/lang/Object;
.source "Advert.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field public adBackup1:Lcom/telguarder/features/advertisements/AdvertNetwork;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "adBackup1"
        foreign = true
        foreignAutoCreate = true
        foreignAutoRefresh = true
    .end annotation
.end field

.field public adBackup2:Lcom/telguarder/features/advertisements/AdvertNetwork;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "adBackup2"
        foreign = true
        foreignAutoCreate = true
        foreignAutoRefresh = true
    .end annotation
.end field

.field public adBackup3:Lcom/telguarder/features/advertisements/AdvertNetwork;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "adBackup3"
        foreign = true
        foreignAutoCreate = true
        foreignAutoRefresh = true
    .end annotation
.end field

.field public adBackup4:Lcom/telguarder/features/advertisements/AdvertNetwork;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "adBackup4"
        foreign = true
        foreignAutoCreate = true
        foreignAutoRefresh = true
    .end annotation
.end field

.field public adBackup5:Lcom/telguarder/features/advertisements/AdvertNetwork;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "adBackup5"
        foreign = true
        foreignAutoCreate = true
        foreignAutoRefresh = true
    .end annotation
.end field

.field public adBackup6:Lcom/telguarder/features/advertisements/AdvertNetwork;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "adBackup6"
        foreign = true
        foreignAutoCreate = true
        foreignAutoRefresh = true
    .end annotation
.end field

.field public adBackup7:Lcom/telguarder/features/advertisements/AdvertNetwork;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "adBackup7"
        foreign = true
        foreignAutoCreate = true
        foreignAutoRefresh = true
    .end annotation
.end field

.field public adBackup8:Lcom/telguarder/features/advertisements/AdvertNetwork;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "adBackup8"
        foreign = true
        foreignAutoCreate = true
        foreignAutoRefresh = true
    .end annotation
.end field

.field public adBackup9:Lcom/telguarder/features/advertisements/AdvertNetwork;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "adBackup9"
        foreign = true
        foreignAutoCreate = true
        foreignAutoRefresh = true
    .end annotation
.end field

.field public createdAtDateTimeInMillis:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "createdAt"
    .end annotation
.end field

.field public id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field public isBackupNetwork:Z

.field public network:Lcom/telguarder/features/advertisements/AdvertNetwork;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "advertNetwork"
        foreign = true
        foreignAutoCreate = true
        foreignAutoRefresh = true
    .end annotation
.end field

.field public place:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "place"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/Advert;->isBackupNetwork:Z

    return-void
.end method

.method public constructor <init>(Lcom/telguarder/features/advertisements/Advert;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/Advert;->isBackupNetwork:Z

    .line 82
    iget-object v0, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    .line 83
    iget-object v0, p1, Lcom/telguarder/features/advertisements/Advert;->place:Ljava/lang/String;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/Advert;->place:Ljava/lang/String;

    .line 84
    iget-object v0, p1, Lcom/telguarder/features/advertisements/Advert;->adBackup1:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup1:Lcom/telguarder/features/advertisements/AdvertNetwork;

    .line 85
    iget-object v0, p1, Lcom/telguarder/features/advertisements/Advert;->adBackup2:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup2:Lcom/telguarder/features/advertisements/AdvertNetwork;

    .line 86
    iget-object v0, p1, Lcom/telguarder/features/advertisements/Advert;->adBackup3:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup3:Lcom/telguarder/features/advertisements/AdvertNetwork;

    .line 87
    iget-object v0, p1, Lcom/telguarder/features/advertisements/Advert;->adBackup4:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup4:Lcom/telguarder/features/advertisements/AdvertNetwork;

    .line 88
    iget-object v0, p1, Lcom/telguarder/features/advertisements/Advert;->adBackup5:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup5:Lcom/telguarder/features/advertisements/AdvertNetwork;

    .line 89
    iget-object v0, p1, Lcom/telguarder/features/advertisements/Advert;->adBackup6:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup6:Lcom/telguarder/features/advertisements/AdvertNetwork;

    .line 90
    iget-object v0, p1, Lcom/telguarder/features/advertisements/Advert;->adBackup7:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup7:Lcom/telguarder/features/advertisements/AdvertNetwork;

    .line 91
    iget-object v0, p1, Lcom/telguarder/features/advertisements/Advert;->adBackup8:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup8:Lcom/telguarder/features/advertisements/AdvertNetwork;

    .line 92
    iget-object p1, p1, Lcom/telguarder/features/advertisements/Advert;->adBackup9:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iput-object p1, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup9:Lcom/telguarder/features/advertisements/AdvertNetwork;

    return-void
.end method

.method public constructor <init>(Lcom/telguarder/features/advertisements/Advert;Lcom/telguarder/features/advertisements/AdvertNetwork;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/Advert;->isBackupNetwork:Z

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/Advert;->isBackupNetwork:Z

    .line 67
    iput-object p2, p0, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    .line 68
    iget-object p2, p1, Lcom/telguarder/features/advertisements/Advert;->place:Ljava/lang/String;

    iput-object p2, p0, Lcom/telguarder/features/advertisements/Advert;->place:Ljava/lang/String;

    .line 69
    iget-object p2, p1, Lcom/telguarder/features/advertisements/Advert;->adBackup1:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iput-object p2, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup1:Lcom/telguarder/features/advertisements/AdvertNetwork;

    .line 70
    iget-object p2, p1, Lcom/telguarder/features/advertisements/Advert;->adBackup2:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iput-object p2, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup2:Lcom/telguarder/features/advertisements/AdvertNetwork;

    .line 71
    iget-object p2, p1, Lcom/telguarder/features/advertisements/Advert;->adBackup3:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iput-object p2, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup3:Lcom/telguarder/features/advertisements/AdvertNetwork;

    .line 72
    iget-object p2, p1, Lcom/telguarder/features/advertisements/Advert;->adBackup4:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iput-object p2, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup4:Lcom/telguarder/features/advertisements/AdvertNetwork;

    .line 73
    iget-object p2, p1, Lcom/telguarder/features/advertisements/Advert;->adBackup5:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iput-object p2, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup5:Lcom/telguarder/features/advertisements/AdvertNetwork;

    .line 74
    iget-object p2, p1, Lcom/telguarder/features/advertisements/Advert;->adBackup6:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iput-object p2, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup6:Lcom/telguarder/features/advertisements/AdvertNetwork;

    .line 75
    iget-object p2, p1, Lcom/telguarder/features/advertisements/Advert;->adBackup7:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iput-object p2, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup7:Lcom/telguarder/features/advertisements/AdvertNetwork;

    .line 76
    iget-object p2, p1, Lcom/telguarder/features/advertisements/Advert;->adBackup8:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iput-object p2, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup8:Lcom/telguarder/features/advertisements/AdvertNetwork;

    .line 77
    iget-object p1, p1, Lcom/telguarder/features/advertisements/Advert;->adBackup9:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iput-object p1, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup9:Lcom/telguarder/features/advertisements/AdvertNetwork;

    return-void
.end method


# virtual methods
.method public backupNetworkAvailable()Z
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 131
    :cond_0
    iget-boolean v2, p0, Lcom/telguarder/features/advertisements/Advert;->isBackupNetwork:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup1:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v2, :cond_1

    .line 132
    iget-object v0, v2, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-static {v0}, Lcom/telguarder/ApplicationConstants;->isAdNetworkEnabled(Lcom/telguarder/features/advertisements/AdvertNetworkName;)Z

    move-result v0

    return v0

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup2:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup1:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-ne v0, v3, :cond_2

    .line 134
    iget-object v0, v2, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-static {v0}, Lcom/telguarder/ApplicationConstants;->isAdNetworkEnabled(Lcom/telguarder/features/advertisements/AdvertNetworkName;)Z

    move-result v0

    return v0

    .line 135
    :cond_2
    iget-object v3, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup3:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v3, :cond_3

    if-ne v0, v2, :cond_3

    .line 136
    iget-object v0, v3, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-static {v0}, Lcom/telguarder/ApplicationConstants;->isAdNetworkEnabled(Lcom/telguarder/features/advertisements/AdvertNetworkName;)Z

    move-result v0

    return v0

    .line 137
    :cond_3
    iget-object v2, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup4:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v2, :cond_4

    if-ne v0, v3, :cond_4

    .line 138
    iget-object v0, v2, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-static {v0}, Lcom/telguarder/ApplicationConstants;->isAdNetworkEnabled(Lcom/telguarder/features/advertisements/AdvertNetworkName;)Z

    move-result v0

    return v0

    .line 139
    :cond_4
    iget-object v3, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup5:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v3, :cond_5

    if-ne v0, v2, :cond_5

    .line 140
    iget-object v0, v3, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-static {v0}, Lcom/telguarder/ApplicationConstants;->isAdNetworkEnabled(Lcom/telguarder/features/advertisements/AdvertNetworkName;)Z

    move-result v0

    return v0

    .line 141
    :cond_5
    iget-object v2, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup6:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v2, :cond_6

    if-ne v0, v3, :cond_6

    .line 142
    iget-object v0, v2, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-static {v0}, Lcom/telguarder/ApplicationConstants;->isAdNetworkEnabled(Lcom/telguarder/features/advertisements/AdvertNetworkName;)Z

    move-result v0

    return v0

    .line 143
    :cond_6
    iget-object v3, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup7:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v3, :cond_7

    if-ne v0, v2, :cond_7

    .line 144
    iget-object v0, v3, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-static {v0}, Lcom/telguarder/ApplicationConstants;->isAdNetworkEnabled(Lcom/telguarder/features/advertisements/AdvertNetworkName;)Z

    move-result v0

    return v0

    .line 145
    :cond_7
    iget-object v2, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup8:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v2, :cond_8

    if-ne v0, v3, :cond_8

    .line 146
    iget-object v0, v2, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-static {v0}, Lcom/telguarder/ApplicationConstants;->isAdNetworkEnabled(Lcom/telguarder/features/advertisements/AdvertNetworkName;)Z

    move-result v0

    return v0

    .line 147
    :cond_8
    iget-object v3, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup9:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v3, :cond_9

    if-ne v0, v2, :cond_9

    .line 148
    iget-object v0, v3, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-static {v0}, Lcom/telguarder/ApplicationConstants;->isAdNetworkEnabled(Lcom/telguarder/features/advertisements/AdvertNetworkName;)Z

    move-result v0

    return v0

    :cond_9
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 160
    :cond_0
    instance-of v1, p1, Lcom/telguarder/features/advertisements/Advert;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 163
    :cond_1
    check-cast p1, Lcom/telguarder/features/advertisements/Advert;

    .line 164
    iget-object v1, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v3, :cond_2

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    iget-object v3, p0, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v3, v3, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    .line 166
    invoke-virtual {v1, v3}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object p1, p1, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    .line 167
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAdvertForBackupNetwork()Lcom/telguarder/features/advertisements/Advert;
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 102
    :cond_0
    iget-boolean v2, p0, Lcom/telguarder/features/advertisements/Advert;->isBackupNetwork:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup1:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v2, :cond_1

    .line 103
    new-instance v0, Lcom/telguarder/features/advertisements/Advert;

    invoke-direct {v0, p0, v2}, Lcom/telguarder/features/advertisements/Advert;-><init>(Lcom/telguarder/features/advertisements/Advert;Lcom/telguarder/features/advertisements/AdvertNetwork;)V

    return-object v0

    .line 104
    :cond_1
    iget-object v2, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup2:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup1:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-ne v0, v3, :cond_2

    .line 105
    new-instance v0, Lcom/telguarder/features/advertisements/Advert;

    invoke-direct {v0, p0, v2}, Lcom/telguarder/features/advertisements/Advert;-><init>(Lcom/telguarder/features/advertisements/Advert;Lcom/telguarder/features/advertisements/AdvertNetwork;)V

    return-object v0

    .line 106
    :cond_2
    iget-object v3, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup3:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v3, :cond_3

    if-ne v0, v2, :cond_3

    .line 107
    new-instance v0, Lcom/telguarder/features/advertisements/Advert;

    invoke-direct {v0, p0, v3}, Lcom/telguarder/features/advertisements/Advert;-><init>(Lcom/telguarder/features/advertisements/Advert;Lcom/telguarder/features/advertisements/AdvertNetwork;)V

    return-object v0

    .line 108
    :cond_3
    iget-object v2, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup4:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v2, :cond_4

    if-ne v0, v3, :cond_4

    .line 109
    new-instance v0, Lcom/telguarder/features/advertisements/Advert;

    invoke-direct {v0, p0, v2}, Lcom/telguarder/features/advertisements/Advert;-><init>(Lcom/telguarder/features/advertisements/Advert;Lcom/telguarder/features/advertisements/AdvertNetwork;)V

    return-object v0

    .line 110
    :cond_4
    iget-object v3, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup5:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v3, :cond_5

    if-ne v0, v2, :cond_5

    .line 111
    new-instance v0, Lcom/telguarder/features/advertisements/Advert;

    invoke-direct {v0, p0, v3}, Lcom/telguarder/features/advertisements/Advert;-><init>(Lcom/telguarder/features/advertisements/Advert;Lcom/telguarder/features/advertisements/AdvertNetwork;)V

    return-object v0

    .line 112
    :cond_5
    iget-object v2, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup6:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v2, :cond_6

    if-ne v0, v3, :cond_6

    .line 113
    new-instance v0, Lcom/telguarder/features/advertisements/Advert;

    invoke-direct {v0, p0, v2}, Lcom/telguarder/features/advertisements/Advert;-><init>(Lcom/telguarder/features/advertisements/Advert;Lcom/telguarder/features/advertisements/AdvertNetwork;)V

    return-object v0

    .line 114
    :cond_6
    iget-object v3, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup7:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v3, :cond_7

    if-ne v0, v2, :cond_7

    .line 115
    new-instance v0, Lcom/telguarder/features/advertisements/Advert;

    invoke-direct {v0, p0, v3}, Lcom/telguarder/features/advertisements/Advert;-><init>(Lcom/telguarder/features/advertisements/Advert;Lcom/telguarder/features/advertisements/AdvertNetwork;)V

    return-object v0

    .line 116
    :cond_7
    iget-object v2, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup8:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v2, :cond_8

    if-ne v0, v3, :cond_8

    .line 117
    new-instance v0, Lcom/telguarder/features/advertisements/Advert;

    invoke-direct {v0, p0, v2}, Lcom/telguarder/features/advertisements/Advert;-><init>(Lcom/telguarder/features/advertisements/Advert;Lcom/telguarder/features/advertisements/AdvertNetwork;)V

    return-object v0

    .line 118
    :cond_8
    iget-object v3, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup9:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v3, :cond_9

    if-ne v0, v2, :cond_9

    .line 119
    new-instance v0, Lcom/telguarder/features/advertisements/Advert;

    invoke-direct {v0, p0, v3}, Lcom/telguarder/features/advertisements/Advert;-><init>(Lcom/telguarder/features/advertisements/Advert;Lcom/telguarder/features/advertisements/AdvertNetwork;)V

    return-object v0

    :cond_9
    return-object v1
.end method

.method public getFlowText()Ljava/lang/String;
    .locals 4

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "place="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/Advert;->place:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "null"

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/Advert;->place:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", network="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", backup="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup1:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup1:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup2:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup2:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v3, v3, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    goto :goto_3

    :cond_3
    move-object v3, v2

    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup3:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup3:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    goto :goto_4

    :cond_4
    move-object v1, v2

    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup4:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup4:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    goto :goto_5

    :cond_5
    move-object v1, v2

    :goto_5
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup5:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup5:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    goto :goto_6

    :cond_6
    move-object v1, v2

    :goto_6
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup6:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup6:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    goto :goto_7

    :cond_7
    move-object v1, v2

    :goto_7
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup7:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v1, :cond_8

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup7:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    goto :goto_8

    :cond_8
    move-object v1, v2

    :goto_8
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup8:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup8:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    goto :goto_9

    :cond_9
    move-object v1, v2

    :goto_9
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup9:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/telguarder/features/advertisements/Advert;->adBackup9:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v2, v0, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    :cond_a
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isListbannerAdvert()Z
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/telguarder/features/advertisements/Advert;->place:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/Advert;->place:Ljava/lang/String;

    const-string v1, "listbanner"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPostCallAdvert()Z
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/telguarder/features/advertisements/Advert;->place:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/Advert;->place:Ljava/lang/String;

    const-string v1, "postcall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
