package com.googlecode.mp4parser.h264.model;

import com.googlecode.mp4parser.h264.a.b;
import com.googlecode.mp4parser.h264.model.VUIParameters;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/h264/model/SeqParameterSet.class */
public class SeqParameterSet extends BitstreamElement {
    public int bit_depth_chroma_minus8;
    public int bit_depth_luma_minus8;
    public ChromaFormat chroma_format_idc;
    public boolean constraint_set_0_flag;
    public boolean constraint_set_1_flag;
    public boolean constraint_set_2_flag;
    public boolean constraint_set_3_flag;
    public boolean constraint_set_4_flag;
    public boolean constraint_set_5_flag;
    public boolean delta_pic_order_always_zero_flag;
    public boolean direct_8x8_inference_flag;
    public boolean entropy_coding_mode_flag;
    public boolean field_pic_flag;
    public int frame_crop_bottom_offset;
    public int frame_crop_left_offset;
    public int frame_crop_right_offset;
    public int frame_crop_top_offset;
    public boolean frame_cropping_flag;
    public boolean frame_mbs_only_flag;
    public boolean gaps_in_frame_num_value_allowed_flag;
    public int level_idc;
    public int log2_max_frame_num_minus4;
    public int log2_max_pic_order_cnt_lsb_minus4;
    public boolean mb_adaptive_frame_field_flag;
    public int num_ref_frames;
    public int num_ref_frames_in_pic_order_cnt_cycle;
    public int[] offsetForRefFrame;
    public int offset_for_non_ref_pic;
    public int offset_for_top_to_bottom_field;
    public int pic_height_in_map_units_minus1;
    public int pic_order_cnt_type;
    public int pic_width_in_mbs_minus1;
    public int profile_idc;
    public boolean qpprime_y_zero_transform_bypass_flag;
    public long reserved_zero_2bits;
    public boolean residual_color_transform_flag;
    public ScalingMatrix scalingMatrix;
    public int seq_parameter_set_id;
    public VUIParameters vuiParams;
    public int weighted_bipred_idc;
    public boolean weighted_pred_flag;

    private static VUIParameters ReadVUIParameters(b bVar) throws IOException {
        VUIParameters vUIParameters = new VUIParameters();
        vUIParameters.aspect_ratio_info_present_flag = bVar.c("VUI: aspect_ratio_info_present_flag");
        if (vUIParameters.aspect_ratio_info_present_flag) {
            vUIParameters.aspect_ratio = AspectRatio.fromValue((int) bVar.a(8, "VUI: aspect_ratio"));
            if (vUIParameters.aspect_ratio == AspectRatio.Extended_SAR) {
                vUIParameters.sar_width = (int) bVar.a(16, "VUI: sar_width");
                vUIParameters.sar_height = (int) bVar.a(16, "VUI: sar_height");
            }
        }
        vUIParameters.overscan_info_present_flag = bVar.c("VUI: overscan_info_present_flag");
        if (vUIParameters.overscan_info_present_flag) {
            vUIParameters.overscan_appropriate_flag = bVar.c("VUI: overscan_appropriate_flag");
        }
        vUIParameters.video_signal_type_present_flag = bVar.c("VUI: video_signal_type_present_flag");
        if (vUIParameters.video_signal_type_present_flag) {
            vUIParameters.video_format = (int) bVar.a(3, "VUI: video_format");
            vUIParameters.video_full_range_flag = bVar.c("VUI: video_full_range_flag");
            vUIParameters.colour_description_present_flag = bVar.c("VUI: colour_description_present_flag");
            if (vUIParameters.colour_description_present_flag) {
                vUIParameters.colour_primaries = (int) bVar.a(8, "VUI: colour_primaries");
                vUIParameters.transfer_characteristics = (int) bVar.a(8, "VUI: transfer_characteristics");
                vUIParameters.matrix_coefficients = (int) bVar.a(8, "VUI: matrix_coefficients");
            }
        }
        vUIParameters.chroma_loc_info_present_flag = bVar.c("VUI: chroma_loc_info_present_flag");
        if (vUIParameters.chroma_loc_info_present_flag) {
            vUIParameters.chroma_sample_loc_type_top_field = bVar.a("VUI chroma_sample_loc_type_top_field");
            vUIParameters.chroma_sample_loc_type_bottom_field = bVar.a("VUI chroma_sample_loc_type_bottom_field");
        }
        vUIParameters.timing_info_present_flag = bVar.c("VUI: timing_info_present_flag");
        if (vUIParameters.timing_info_present_flag) {
            vUIParameters.num_units_in_tick = (int) bVar.a(32, "VUI: num_units_in_tick");
            vUIParameters.time_scale = (int) bVar.a(32, "VUI: time_scale");
            vUIParameters.fixed_frame_rate_flag = bVar.c("VUI: fixed_frame_rate_flag");
        }
        boolean c2 = bVar.c("VUI: nal_hrd_parameters_present_flag");
        if (c2) {
            vUIParameters.nalHRDParams = readHRDParameters(bVar);
        }
        boolean c3 = bVar.c("VUI: vcl_hrd_parameters_present_flag");
        if (c3) {
            vUIParameters.vclHRDParams = readHRDParameters(bVar);
        }
        if (c2 || c3) {
            vUIParameters.low_delay_hrd_flag = bVar.c("VUI: low_delay_hrd_flag");
        }
        vUIParameters.pic_struct_present_flag = bVar.c("VUI: pic_struct_present_flag");
        if (bVar.c("VUI: bitstream_restriction_flag")) {
            vUIParameters.bitstreamRestriction = new VUIParameters.BitstreamRestriction();
            vUIParameters.bitstreamRestriction.motion_vectors_over_pic_boundaries_flag = bVar.c("VUI: motion_vectors_over_pic_boundaries_flag");
            vUIParameters.bitstreamRestriction.max_bytes_per_pic_denom = bVar.a("VUI max_bytes_per_pic_denom");
            vUIParameters.bitstreamRestriction.max_bits_per_mb_denom = bVar.a("VUI max_bits_per_mb_denom");
            vUIParameters.bitstreamRestriction.log2_max_mv_length_horizontal = bVar.a("VUI log2_max_mv_length_horizontal");
            vUIParameters.bitstreamRestriction.log2_max_mv_length_vertical = bVar.a("VUI log2_max_mv_length_vertical");
            vUIParameters.bitstreamRestriction.num_reorder_frames = bVar.a("VUI num_reorder_frames");
            vUIParameters.bitstreamRestriction.max_dec_frame_buffering = bVar.a("VUI max_dec_frame_buffering");
        }
        return vUIParameters;
    }

    public static SeqParameterSet read(InputStream inputStream) throws IOException {
        b bVar = new b(inputStream);
        SeqParameterSet seqParameterSet = new SeqParameterSet();
        seqParameterSet.profile_idc = (int) bVar.a(8, "SPS: profile_idc");
        seqParameterSet.constraint_set_0_flag = bVar.c("SPS: constraint_set_0_flag");
        seqParameterSet.constraint_set_1_flag = bVar.c("SPS: constraint_set_1_flag");
        seqParameterSet.constraint_set_2_flag = bVar.c("SPS: constraint_set_2_flag");
        seqParameterSet.constraint_set_3_flag = bVar.c("SPS: constraint_set_3_flag");
        seqParameterSet.constraint_set_4_flag = bVar.c("SPS: constraint_set_4_flag");
        seqParameterSet.constraint_set_5_flag = bVar.c("SPS: constraint_set_5_flag");
        seqParameterSet.reserved_zero_2bits = bVar.a(2, "SPS: reserved_zero_2bits");
        seqParameterSet.level_idc = (int) bVar.a(8, "SPS: level_idc");
        seqParameterSet.seq_parameter_set_id = bVar.a("SPS: seq_parameter_set_id");
        int i = seqParameterSet.profile_idc;
        if (i == 100 || i == 110 || i == 122 || i == 144) {
            ChromaFormat fromId = ChromaFormat.fromId(bVar.a("SPS: chroma_format_idc"));
            seqParameterSet.chroma_format_idc = fromId;
            if (fromId == ChromaFormat.YUV_444) {
                seqParameterSet.residual_color_transform_flag = bVar.c("SPS: residual_color_transform_flag");
            }
            seqParameterSet.bit_depth_luma_minus8 = bVar.a("SPS: bit_depth_luma_minus8");
            seqParameterSet.bit_depth_chroma_minus8 = bVar.a("SPS: bit_depth_chroma_minus8");
            seqParameterSet.qpprime_y_zero_transform_bypass_flag = bVar.c("SPS: qpprime_y_zero_transform_bypass_flag");
            if (bVar.c("SPS: seq_scaling_matrix_present_lag")) {
                readScalingListMatrix(bVar, seqParameterSet);
            }
        } else {
            seqParameterSet.chroma_format_idc = ChromaFormat.YUV_420;
        }
        seqParameterSet.log2_max_frame_num_minus4 = bVar.a("SPS: log2_max_frame_num_minus4");
        int a2 = bVar.a("SPS: pic_order_cnt_type");
        seqParameterSet.pic_order_cnt_type = a2;
        if (a2 == 0) {
            seqParameterSet.log2_max_pic_order_cnt_lsb_minus4 = bVar.a("SPS: log2_max_pic_order_cnt_lsb_minus4");
        } else if (a2 == 1) {
            seqParameterSet.delta_pic_order_always_zero_flag = bVar.c("SPS: delta_pic_order_always_zero_flag");
            seqParameterSet.offset_for_non_ref_pic = bVar.b("SPS: offset_for_non_ref_pic");
            seqParameterSet.offset_for_top_to_bottom_field = bVar.b("SPS: offset_for_top_to_bottom_field");
            int a3 = bVar.a("SPS: num_ref_frames_in_pic_order_cnt_cycle");
            seqParameterSet.num_ref_frames_in_pic_order_cnt_cycle = a3;
            seqParameterSet.offsetForRefFrame = new int[a3];
            for (int i2 = 0; i2 < seqParameterSet.num_ref_frames_in_pic_order_cnt_cycle; i2++) {
                int[] iArr = seqParameterSet.offsetForRefFrame;
                iArr[i2] = bVar.b("SPS: offsetForRefFrame [" + i2 + "]");
            }
        }
        seqParameterSet.num_ref_frames = bVar.a("SPS: num_ref_frames");
        seqParameterSet.gaps_in_frame_num_value_allowed_flag = bVar.c("SPS: gaps_in_frame_num_value_allowed_flag");
        seqParameterSet.pic_width_in_mbs_minus1 = bVar.a("SPS: pic_width_in_mbs_minus1");
        seqParameterSet.pic_height_in_map_units_minus1 = bVar.a("SPS: pic_height_in_map_units_minus1");
        boolean c2 = bVar.c("SPS: frame_mbs_only_flag");
        seqParameterSet.frame_mbs_only_flag = c2;
        if (!c2) {
            seqParameterSet.mb_adaptive_frame_field_flag = bVar.c("SPS: mb_adaptive_frame_field_flag");
        }
        seqParameterSet.direct_8x8_inference_flag = bVar.c("SPS: direct_8x8_inference_flag");
        boolean c3 = bVar.c("SPS: frame_cropping_flag");
        seqParameterSet.frame_cropping_flag = c3;
        if (c3) {
            seqParameterSet.frame_crop_left_offset = bVar.a("SPS: frame_crop_left_offset");
            seqParameterSet.frame_crop_right_offset = bVar.a("SPS: frame_crop_right_offset");
            seqParameterSet.frame_crop_top_offset = bVar.a("SPS: frame_crop_top_offset");
            seqParameterSet.frame_crop_bottom_offset = bVar.a("SPS: frame_crop_bottom_offset");
        }
        if (bVar.c("SPS: vui_parameters_present_flag")) {
            seqParameterSet.vuiParams = ReadVUIParameters(bVar);
        }
        bVar.d();
        return seqParameterSet;
    }

    public static SeqParameterSet read(byte[] bArr) throws IOException {
        return read(new ByteArrayInputStream(bArr));
    }

    private static HRDParameters readHRDParameters(b bVar) throws IOException {
        HRDParameters hRDParameters = new HRDParameters();
        hRDParameters.cpb_cnt_minus1 = bVar.a("SPS: cpb_cnt_minus1");
        hRDParameters.bit_rate_scale = (int) bVar.a(4, "HRD: bit_rate_scale");
        hRDParameters.cpb_size_scale = (int) bVar.a(4, "HRD: cpb_size_scale");
        hRDParameters.bit_rate_value_minus1 = new int[hRDParameters.cpb_cnt_minus1 + 1];
        hRDParameters.cpb_size_value_minus1 = new int[hRDParameters.cpb_cnt_minus1 + 1];
        hRDParameters.cbr_flag = new boolean[hRDParameters.cpb_cnt_minus1 + 1];
        for (int i = 0; i <= hRDParameters.cpb_cnt_minus1; i++) {
            hRDParameters.bit_rate_value_minus1[i] = bVar.a("HRD: bit_rate_value_minus1");
            hRDParameters.cpb_size_value_minus1[i] = bVar.a("HRD: cpb_size_value_minus1");
            hRDParameters.cbr_flag[i] = bVar.c("HRD: cbr_flag");
        }
        hRDParameters.initial_cpb_removal_delay_length_minus1 = (int) bVar.a(5, "HRD: initial_cpb_removal_delay_length_minus1");
        hRDParameters.cpb_removal_delay_length_minus1 = (int) bVar.a(5, "HRD: cpb_removal_delay_length_minus1");
        hRDParameters.dpb_output_delay_length_minus1 = (int) bVar.a(5, "HRD: dpb_output_delay_length_minus1");
        hRDParameters.time_offset_length = (int) bVar.a(5, "HRD: time_offset_length");
        return hRDParameters;
    }

    private static void readScalingListMatrix(b bVar, SeqParameterSet seqParameterSet) throws IOException {
        seqParameterSet.scalingMatrix = new ScalingMatrix();
        for (int i = 0; i < 8; i++) {
            if (bVar.c("SPS: seqScalingListPresentFlag")) {
                seqParameterSet.scalingMatrix.ScalingList4x4 = new ScalingList[8];
                seqParameterSet.scalingMatrix.ScalingList8x8 = new ScalingList[8];
                if (i < 6) {
                    seqParameterSet.scalingMatrix.ScalingList4x4[i] = ScalingList.read(bVar, 16);
                } else {
                    seqParameterSet.scalingMatrix.ScalingList8x8[i - 6] = ScalingList.read(bVar, 64);
                }
            }
        }
    }

    private void writeHRDParameters(HRDParameters hRDParameters, com.googlecode.mp4parser.h264.b.b bVar) throws IOException {
        bVar.a(hRDParameters.cpb_cnt_minus1, "HRD: cpb_cnt_minus1");
        bVar.a(hRDParameters.bit_rate_scale, 4, "HRD: bit_rate_scale");
        bVar.a(hRDParameters.cpb_size_scale, 4, "HRD: cpb_size_scale");
        for (int i = 0; i <= hRDParameters.cpb_cnt_minus1; i++) {
            bVar.a(hRDParameters.bit_rate_value_minus1[i], "HRD: ");
            bVar.a(hRDParameters.cpb_size_value_minus1[i], "HRD: ");
            bVar.a(hRDParameters.cbr_flag[i], "HRD: ");
        }
        bVar.a(hRDParameters.initial_cpb_removal_delay_length_minus1, 5, "HRD: initial_cpb_removal_delay_length_minus1");
        bVar.a(hRDParameters.cpb_removal_delay_length_minus1, 5, "HRD: cpb_removal_delay_length_minus1");
        bVar.a(hRDParameters.dpb_output_delay_length_minus1, 5, "HRD: dpb_output_delay_length_minus1");
        bVar.a(hRDParameters.time_offset_length, 5, "HRD: time_offset_length");
    }

    private void writeVUIParameters(VUIParameters vUIParameters, com.googlecode.mp4parser.h264.b.b bVar) throws IOException {
        bVar.a(vUIParameters.aspect_ratio_info_present_flag, "VUI: aspect_ratio_info_present_flag");
        if (vUIParameters.aspect_ratio_info_present_flag) {
            bVar.a(vUIParameters.aspect_ratio.getValue(), 8, "VUI: aspect_ratio");
            if (vUIParameters.aspect_ratio == AspectRatio.Extended_SAR) {
                bVar.a(vUIParameters.sar_width, 16, "VUI: sar_width");
                bVar.a(vUIParameters.sar_height, 16, "VUI: sar_height");
            }
        }
        bVar.a(vUIParameters.overscan_info_present_flag, "VUI: overscan_info_present_flag");
        if (vUIParameters.overscan_info_present_flag) {
            bVar.a(vUIParameters.overscan_appropriate_flag, "VUI: overscan_appropriate_flag");
        }
        bVar.a(vUIParameters.video_signal_type_present_flag, "VUI: video_signal_type_present_flag");
        if (vUIParameters.video_signal_type_present_flag) {
            bVar.a(vUIParameters.video_format, 3, "VUI: video_format");
            bVar.a(vUIParameters.video_full_range_flag, "VUI: video_full_range_flag");
            bVar.a(vUIParameters.colour_description_present_flag, "VUI: colour_description_present_flag");
            if (vUIParameters.colour_description_present_flag) {
                bVar.a(vUIParameters.colour_primaries, 8, "VUI: colour_primaries");
                bVar.a(vUIParameters.transfer_characteristics, 8, "VUI: transfer_characteristics");
                bVar.a(vUIParameters.matrix_coefficients, 8, "VUI: matrix_coefficients");
            }
        }
        bVar.a(vUIParameters.chroma_loc_info_present_flag, "VUI: chroma_loc_info_present_flag");
        if (vUIParameters.chroma_loc_info_present_flag) {
            bVar.a(vUIParameters.chroma_sample_loc_type_top_field, "VUI: chroma_sample_loc_type_top_field");
            bVar.a(vUIParameters.chroma_sample_loc_type_bottom_field, "VUI: chroma_sample_loc_type_bottom_field");
        }
        bVar.a(vUIParameters.timing_info_present_flag, "VUI: timing_info_present_flag");
        if (vUIParameters.timing_info_present_flag) {
            bVar.a(vUIParameters.num_units_in_tick, 32, "VUI: num_units_in_tick");
            bVar.a(vUIParameters.time_scale, 32, "VUI: time_scale");
            bVar.a(vUIParameters.fixed_frame_rate_flag, "VUI: fixed_frame_rate_flag");
        }
        boolean z = true;
        bVar.a(vUIParameters.nalHRDParams != null, "VUI: ");
        if (vUIParameters.nalHRDParams != null) {
            writeHRDParameters(vUIParameters.nalHRDParams, bVar);
        }
        bVar.a(vUIParameters.vclHRDParams != null, "VUI: ");
        if (vUIParameters.vclHRDParams != null) {
            writeHRDParameters(vUIParameters.vclHRDParams, bVar);
        }
        if (!(vUIParameters.nalHRDParams == null && vUIParameters.vclHRDParams == null)) {
            bVar.a(vUIParameters.low_delay_hrd_flag, "VUI: low_delay_hrd_flag");
        }
        bVar.a(vUIParameters.pic_struct_present_flag, "VUI: pic_struct_present_flag");
        if (vUIParameters.bitstreamRestriction == null) {
            z = false;
        }
        bVar.a(z, "VUI: ");
        if (vUIParameters.bitstreamRestriction != null) {
            bVar.a(vUIParameters.bitstreamRestriction.motion_vectors_over_pic_boundaries_flag, "VUI: motion_vectors_over_pic_boundaries_flag");
            bVar.a(vUIParameters.bitstreamRestriction.max_bytes_per_pic_denom, "VUI: max_bytes_per_pic_denom");
            bVar.a(vUIParameters.bitstreamRestriction.max_bits_per_mb_denom, "VUI: max_bits_per_mb_denom");
            bVar.a(vUIParameters.bitstreamRestriction.log2_max_mv_length_horizontal, "VUI: log2_max_mv_length_horizontal");
            bVar.a(vUIParameters.bitstreamRestriction.log2_max_mv_length_vertical, "VUI: log2_max_mv_length_vertical");
            bVar.a(vUIParameters.bitstreamRestriction.num_reorder_frames, "VUI: num_reorder_frames");
            bVar.a(vUIParameters.bitstreamRestriction.max_dec_frame_buffering, "VUI: max_dec_frame_buffering");
        }
    }

    public String toString() {
        return "SeqParameterSet{ \n        pic_order_cnt_type=" + this.pic_order_cnt_type + ", \n        field_pic_flag=" + this.field_pic_flag + ", \n        delta_pic_order_always_zero_flag=" + this.delta_pic_order_always_zero_flag + ", \n        weighted_pred_flag=" + this.weighted_pred_flag + ", \n        weighted_bipred_idc=" + this.weighted_bipred_idc + ", \n        entropy_coding_mode_flag=" + this.entropy_coding_mode_flag + ", \n        mb_adaptive_frame_field_flag=" + this.mb_adaptive_frame_field_flag + ", \n        direct_8x8_inference_flag=" + this.direct_8x8_inference_flag + ", \n        chroma_format_idc=" + this.chroma_format_idc + ", \n        log2_max_frame_num_minus4=" + this.log2_max_frame_num_minus4 + ", \n        log2_max_pic_order_cnt_lsb_minus4=" + this.log2_max_pic_order_cnt_lsb_minus4 + ", \n        pic_height_in_map_units_minus1=" + this.pic_height_in_map_units_minus1 + ", \n        pic_width_in_mbs_minus1=" + this.pic_width_in_mbs_minus1 + ", \n        bit_depth_luma_minus8=" + this.bit_depth_luma_minus8 + ", \n        bit_depth_chroma_minus8=" + this.bit_depth_chroma_minus8 + ", \n        qpprime_y_zero_transform_bypass_flag=" + this.qpprime_y_zero_transform_bypass_flag + ", \n        profile_idc=" + this.profile_idc + ", \n        constraint_set_0_flag=" + this.constraint_set_0_flag + ", \n        constraint_set_1_flag=" + this.constraint_set_1_flag + ", \n        constraint_set_2_flag=" + this.constraint_set_2_flag + ", \n        constraint_set_3_flag=" + this.constraint_set_3_flag + ", \n        constraint_set_4_flag=" + this.constraint_set_4_flag + ", \n        constraint_set_5_flag=" + this.constraint_set_5_flag + ", \n        level_idc=" + this.level_idc + ", \n        seq_parameter_set_id=" + this.seq_parameter_set_id + ", \n        residual_color_transform_flag=" + this.residual_color_transform_flag + ", \n        offset_for_non_ref_pic=" + this.offset_for_non_ref_pic + ", \n        offset_for_top_to_bottom_field=" + this.offset_for_top_to_bottom_field + ", \n        num_ref_frames=" + this.num_ref_frames + ", \n        gaps_in_frame_num_value_allowed_flag=" + this.gaps_in_frame_num_value_allowed_flag + ", \n        frame_mbs_only_flag=" + this.frame_mbs_only_flag + ", \n        frame_cropping_flag=" + this.frame_cropping_flag + ", \n        frame_crop_left_offset=" + this.frame_crop_left_offset + ", \n        frame_crop_right_offset=" + this.frame_crop_right_offset + ", \n        frame_crop_top_offset=" + this.frame_crop_top_offset + ", \n        frame_crop_bottom_offset=" + this.frame_crop_bottom_offset + ", \n        offsetForRefFrame=" + this.offsetForRefFrame + ", \n        vuiParams=" + this.vuiParams + ", \n        scalingMatrix=" + this.scalingMatrix + ", \n        num_ref_frames_in_pic_order_cnt_cycle=" + this.num_ref_frames_in_pic_order_cnt_cycle + '}';
    }

    @Override // com.googlecode.mp4parser.h264.model.BitstreamElement
    public void write(OutputStream outputStream) throws IOException {
        com.googlecode.mp4parser.h264.b.b bVar = new com.googlecode.mp4parser.h264.b.b(outputStream);
        bVar.a(this.profile_idc, 8, "SPS: profile_idc");
        bVar.a(this.constraint_set_0_flag, "SPS: constraint_set_0_flag");
        bVar.a(this.constraint_set_1_flag, "SPS: constraint_set_1_flag");
        bVar.a(this.constraint_set_2_flag, "SPS: constraint_set_2_flag");
        bVar.a(this.constraint_set_3_flag, "SPS: constraint_set_3_flag");
        bVar.a(0L, 4, "SPS: reserved");
        bVar.a(this.level_idc, 8, "SPS: level_idc");
        bVar.a(this.seq_parameter_set_id, "SPS: seq_parameter_set_id");
        int i = this.profile_idc;
        boolean z = false;
        if (i == 100 || i == 110 || i == 122 || i == 144) {
            bVar.a(this.chroma_format_idc.getId(), "SPS: chroma_format_idc");
            if (this.chroma_format_idc == ChromaFormat.YUV_444) {
                bVar.a(this.residual_color_transform_flag, "SPS: residual_color_transform_flag");
            }
            bVar.a(this.bit_depth_luma_minus8, "SPS: ");
            bVar.a(this.bit_depth_chroma_minus8, "SPS: ");
            bVar.a(this.qpprime_y_zero_transform_bypass_flag, "SPS: qpprime_y_zero_transform_bypass_flag");
            bVar.a(this.scalingMatrix != null, "SPS: ");
            if (this.scalingMatrix != null) {
                for (int i2 = 0; i2 < 8; i2++) {
                    if (i2 < 6) {
                        bVar.a(this.scalingMatrix.ScalingList4x4[i2] != null, "SPS: ");
                        if (this.scalingMatrix.ScalingList4x4[i2] != null) {
                            this.scalingMatrix.ScalingList4x4[i2].write(bVar);
                        }
                    } else {
                        int i3 = i2 - 6;
                        bVar.a(this.scalingMatrix.ScalingList8x8[i3] != null, "SPS: ");
                        if (this.scalingMatrix.ScalingList8x8[i3] != null) {
                            this.scalingMatrix.ScalingList8x8[i3].write(bVar);
                        }
                    }
                }
            }
        }
        bVar.a(this.log2_max_frame_num_minus4, "SPS: log2_max_frame_num_minus4");
        bVar.a(this.pic_order_cnt_type, "SPS: pic_order_cnt_type");
        int i4 = this.pic_order_cnt_type;
        if (i4 == 0) {
            bVar.a(this.log2_max_pic_order_cnt_lsb_minus4, "SPS: log2_max_pic_order_cnt_lsb_minus4");
        } else if (i4 == 1) {
            bVar.a(this.delta_pic_order_always_zero_flag, "SPS: delta_pic_order_always_zero_flag");
            bVar.b(this.offset_for_non_ref_pic, "SPS: offset_for_non_ref_pic");
            bVar.b(this.offset_for_top_to_bottom_field, "SPS: offset_for_top_to_bottom_field");
            bVar.a(this.offsetForRefFrame.length, "SPS: ");
            int i5 = 0;
            while (true) {
                int[] iArr = this.offsetForRefFrame;
                if (i5 >= iArr.length) {
                    break;
                }
                bVar.b(iArr[i5], "SPS: ");
                i5++;
            }
        }
        bVar.a(this.num_ref_frames, "SPS: num_ref_frames");
        bVar.a(this.gaps_in_frame_num_value_allowed_flag, "SPS: gaps_in_frame_num_value_allowed_flag");
        bVar.a(this.pic_width_in_mbs_minus1, "SPS: pic_width_in_mbs_minus1");
        bVar.a(this.pic_height_in_map_units_minus1, "SPS: pic_height_in_map_units_minus1");
        bVar.a(this.frame_mbs_only_flag, "SPS: frame_mbs_only_flag");
        if (!this.frame_mbs_only_flag) {
            bVar.a(this.mb_adaptive_frame_field_flag, "SPS: mb_adaptive_frame_field_flag");
        }
        bVar.a(this.direct_8x8_inference_flag, "SPS: direct_8x8_inference_flag");
        bVar.a(this.frame_cropping_flag, "SPS: frame_cropping_flag");
        if (this.frame_cropping_flag) {
            bVar.a(this.frame_crop_left_offset, "SPS: frame_crop_left_offset");
            bVar.a(this.frame_crop_right_offset, "SPS: frame_crop_right_offset");
            bVar.a(this.frame_crop_top_offset, "SPS: frame_crop_top_offset");
            bVar.a(this.frame_crop_bottom_offset, "SPS: frame_crop_bottom_offset");
        }
        if (this.vuiParams != null) {
            z = true;
        }
        bVar.a(z, "SPS: ");
        VUIParameters vUIParameters = this.vuiParams;
        if (vUIParameters != null) {
            writeVUIParameters(vUIParameters, bVar);
        }
        bVar.c();
    }
}
